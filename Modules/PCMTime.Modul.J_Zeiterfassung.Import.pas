unit PCMTime.Modul.J_Zeiterfassung.Import;

interface

uses System.SysUtils, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Comp.Client, PCMTime.Import.HRWorks, cxCheckBox, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxCustomListBox, cxCheckListBox, Vcl.Controls, System.Classes,
  dxLayoutContainer, cxClasses, dxLayoutControl, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, dxLayoutControlAdapters, Vcl.Menus,
  cxButtons;

type
  TImportForm = class(TForm)
    lstTage: TcxCheckListBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    lblQuelle: TdxLayoutLabeledItem;
    dxLayoutItem2: TdxLayoutItem;
    chkErsetzen: TdxLayoutCheckBoxItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cboOrt: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutGroup3: TdxLayoutGroup;
    lblStatus: TdxLayoutLabeledItem;
    dxLayoutItem4: TdxLayoutItem;
    btnImportieren: TcxButton;
    btnAbbrechen: TcxButton;
    procedure FillRows(Sender: TObject);
    procedure SaveRows(Sender: TObject);
  private
    FDays: THRWorksDays;
    FEmployee: Integer;
    FQuery: TFDQuery;
    function RowStatus(const Day: THRWorksDay; out AID: Integer): string;
  public
    constructor CreateImport(AOwner: TForm; AEmployee: Integer;
      const ADays: THRWorksDays; const ASource: string);
  end;

var
  ImportForm: TImportForm;


function ImportHRWorksPDF(AOwner: TForm; AMitarbeiter: Integer): Boolean;

implementation

{$R *.dfm}

uses
  System.DateUtils, System.RegularExpressions,
  Vcl.Dialogs,
  Data.DB, FireDAC.Stan.Param,
  PCM.Data, PCMTime.Calculate, PCMTime.Import.PDF, PCM.Helper;

function SameTime(AField: TField; AMinutes: Integer): Boolean;
begin
  Result := Abs(Frac(AField.AsDateTime) * 1440 - AMinutes) < 0.02;
end;

function TImportForm.RowStatus(const Day: THRWorksDay; out AID: Integer): string;
const Names: array[0..5] of string =
  ('Kommen','Gehen','Pause1Beginn','Pause1Ende','Pause2Beginn','Pause2Ende');
var I: Integer; Values: array[0..5] of Integer; HasTime, Same: Boolean;
begin
  AID := 0;
  if Trunc(Day.Datum) >= Trunc(Date) then
    Exit('Uebersprungen: heutiger oder zukuenftiger Tag');
  if Day.Hinweis <> '' then Exit('Uebersprungen: ' + Day.Hinweis);
  if FQuery.RecordCount > 1 then Exit('Uebersprungen: mehrere Datensaetze fuer diesen Tag');
  if FQuery.IsEmpty then Exit('Neu');
  AID := FQuery.FieldByName('ID').AsInteger;
  if not FQuery.FieldByName('Abgeschlossen').IsNull then Exit('Uebersprungen: abgeschlossen');
  if (Trim(FQuery.FieldByName('Fehltag').AsString) <> '') or
    (FQuery.FieldByName('Feiertag').AsInteger <> 0) then
    Exit('Uebersprungen: Abwesenheit oder Feiertag vorhanden');
  Values[0] := Day.Kommen; Values[1] := Day.Gehen;
  Values[2] := Day.Pause1Beginn; Values[3] := Day.Pause1Ende;
  Values[4] := Day.Pause2Beginn; Values[5] := Day.Pause2Ende;
  HasTime := False; Same := True;
  for I := 0 to 5 do
  begin
    HasTime := HasTime or not SameTime(FQuery.FieldByName(Names[I]), 0);
    Same := Same and SameTime(FQuery.FieldByName(Names[I]), Values[I]);
  end;
  Same := Same and (FQuery.FieldByName('ArbeitszeitI').AsInteger = Day.Netto) and
    (FQuery.FieldByName('PausenI').AsInteger = Day.Pause) and
    (FQuery.FieldByName('SollstundenI').AsInteger = Day.Soll) and
    (FQuery.FieldByName('MehrarbeitI').AsInteger = Day.Netto - Day.Soll) and
    (FQuery.FieldByName('Buchungsart').AsInteger = cboOrt.ItemIndex);
  if Same then Exit('Uebersprungen: bereits identisch importiert');
  if HasTime and not chkErsetzen.Checked then Exit('Uebersprungen: Zeiten vorhanden');
  if HasTime then Result := 'Vorhandene Zeiten ersetzen'
  else Result := 'Leeren Tag fuellen';
end;

constructor TImportForm.CreateImport(AOwner: TForm; AEmployee: Integer;
  const ADays: THRWorksDays; const ASource: string);
var Name: string;
begin
  inherited Create(AOwner);
  FEmployee := AEmployee; FDays := ADays;
  FQuery := TFDQuery.Create(Self); FQuery.Connection := dm_PCM.con_PCM;
  FQuery.SQL.Text := 'SELECT Vorname, Nachname FROM time_user WHERE ID = :ID';
  FQuery.ParamByName('ID').AsInteger := FEmployee; FQuery.Open;
  if FQuery.IsEmpty then raise Exception.Create('Bitte zuerst einen Mitarbeiter auswaehlen.');
  Name := Trim(FQuery.FieldByName('Vorname').AsString + ' ' + FQuery.FieldByName('Nachname').AsString);
  FQuery.Close;
  lblQuelle.Caption := 'Import fuer ' + Name + ' (ID ' + IntToStr(FEmployee) + '). Quelle: ' + ASource;
  FillRows(nil);
end;

procedure TImportForm.FillRows(Sender: TObject);
var I, ID, Eligible: Integer; Status, Line: string;
  Item: TcxCheckListBoxItem;
begin
  lstTage.Items.BeginUpdate;
  try
    lstTage.Items.Clear; Eligible := 0;
    for I := 0 to High(FDays) do
    begin
      FQuery.Close;
      FQuery.SQL.Text := 'SELECT * FROM time_buchungen WHERE ID_Benutzer = :ID AND Datum = :Datum';
      FQuery.ParamByName('ID').AsInteger := FEmployee;
      FQuery.ParamByName('Datum').AsDate := FDays[I].Datum;
      FQuery.Open; FQuery.FetchAll;
      Status := RowStatus(FDays[I], ID);
      Line := FormatDateTime('dd.mm.yyyy', FDays[I].Datum) + '  ' +
        ImportTime(FDays[I].Kommen) + '  ' + ImportTime(FDays[I].Gehen) + '  ' +
        ImportTime(FDays[I].Pause1Beginn) + '-' + ImportTime(FDays[I].Pause1Ende) + '  ' +
        ImportTime(FDays[I].Pause2Beginn) + '-' + ImportTime(FDays[I].Pause2Ende) + '  ' +
        ImportTime(FDays[I].Netto) + '  ' + Status;
      Item := lstTage.Items.Add;
      Item.Text := Line;
      Item.Enabled := not Status.StartsWith('Uebersprungen: heutiger') and chkErsetzen.Checked;
      Item.Checked := Item.Enabled;
      if Item.Checked then Inc(Eligible);
    end;
    FQuery.Close;
    lblStatus.Caption := Format('%d von %d Tagen importierbar. Bitte Buchungsort waehlen und Tagesauswahl pruefen.', [Eligible, Length(FDays)]);
  finally lstTage.Items.EndUpdate; end;
end;

procedure TImportForm.SaveRows(Sender: TObject);
const DayNames: array[1..7] of string = ('Mo.','Di.','Mi.','Do.','Fr.','Sa.','So.');
var I, ID, Count: Integer; Status: string; Selected: TArray<Boolean>;
  MonthKeys: TStringList; Y, M, D: Word; Day: THRWorksDay;
begin
  if cboOrt.ItemIndex < 0 then
  begin ShowMessage('Bitte einen Buchungsort waehlen.'); Exit; end;
  Count := 0; SetLength(Selected, Length(FDays));
  for I := 0 to High(FDays) do
  begin Selected[I] := lstTage.Items[I].Enabled and lstTage.Items[I].Checked; if Selected[I] then Inc(Count); end;
  if Count = 0 then begin ShowMessage('Bitte mindestens einen importierbaren Tag auswaehlen.'); Exit; end;
  if dm_PCM.con_PCM.InTransaction then
    raise Exception.Create('Eine andere Datenbearbeitung ist noch aktiv. Bitte diese zuerst abschliessen.');
  MonthKeys := TStringList.Create;
  try
    MonthKeys.Sorted := True; MonthKeys.Duplicates := dupIgnore;
    dm_PCM.con_PCM.StartTransaction;
    try
      for I := 0 to High(FDays) do
      begin
        if not Selected[I] then Continue;
        Day := FDays[I];
        FQuery.Close;
        FQuery.SQL.Text := 'SELECT * FROM time_buchungen WHERE ID_Benutzer = :ID AND Datum = :Datum FOR UPDATE';
        FQuery.ParamByName('ID').AsInteger := FEmployee;
        FQuery.ParamByName('Datum').AsDate := Day.Datum;
        FQuery.Open; FQuery.FetchAll;
        Status := RowStatus(Day, ID); FQuery.Close;
        if Status.StartsWith('Uebersprungen: heutiger') then
          raise Exception.Create(DateToStr(Day.Datum) + ': ' + Status + '. Vorschau bitte neu pruefen.');
        if ID = 0 then
          FQuery.SQL.Text := 'INSERT INTO time_buchungen ' +
            '(ID_Benutzer,Datum,Tag,Kommen,Gehen,Pause1Beginn,Pause1Ende,Pause2Beginn,Pause2Ende,' +
            'Sollstunden,SollstundenI,Arbeitszeit,ArbeitszeitI,Mehrarbeit,MehrarbeitI,PausenI,FeiertagI,Buchungsart,Feiertag,Fehltag) ' +
            'VALUES (:ID,:Datum,:Tag,:Kommen,:Gehen,:P1B,:P1E,:P2B,:P2E,:Soll,:SollI,:Netto,:NettoI,:Mehrarbeit,:MehrarbeitI,:PauseI,0,:Ort,0,'' '')'
        else
          FQuery.SQL.Text := 'UPDATE time_buchungen SET Tag=:Tag,Kommen=:Kommen,Gehen=:Gehen,' +
            'Pause1Beginn=:P1B,Pause1Ende=:P1E,Pause2Beginn=:P2B,Pause2Ende=:P2E,' +
            'Sollstunden=:Soll,SollstundenI=:SollI,Arbeitszeit=:Netto,ArbeitszeitI=:NettoI,' +
            'Mehrarbeit=:Mehrarbeit,MehrarbeitI=:MehrarbeitI,PausenI=:PauseI,FeiertagI=0,Buchungsart=:Ort ' +
            'WHERE ID=:RowID AND ID_Benutzer=:ID AND Datum=:Datum';
        if ID <> 0 then FQuery.ParamByName('RowID').AsInteger := ID;
        FQuery.ParamByName('ID').AsInteger := FEmployee;
        FQuery.ParamByName('Datum').AsDate := Day.Datum;
        FQuery.ParamByName('Tag').AsString := DayNames[DayOfTheWeek(Day.Datum)];
        FQuery.ParamByName('Kommen').AsTime := Day.Kommen / 1440;
        FQuery.ParamByName('Gehen').AsTime := Day.Gehen / 1440;
        FQuery.ParamByName('P1B').AsTime := Day.Pause1Beginn / 1440;
        FQuery.ParamByName('P1E').AsTime := Day.Pause1Ende / 1440;
        FQuery.ParamByName('P2B').AsTime := Day.Pause2Beginn / 1440;
        FQuery.ParamByName('P2E').AsTime := Day.Pause2Ende / 1440;
        FQuery.ParamByName('Soll').AsTime := Day.Soll / 1440;
        FQuery.ParamByName('SollI').AsInteger := Day.Soll;
        FQuery.ParamByName('Netto').AsString := GetTimeValue(Day.Netto);
        FQuery.ParamByName('NettoI').AsInteger := Day.Netto;
        FQuery.ParamByName('Mehrarbeit').AsString := GetTimeValue(Day.Netto - Day.Soll);
        FQuery.ParamByName('MehrarbeitI').AsInteger := Day.Netto - Day.Soll;
        FQuery.ParamByName('PauseI').AsInteger := Day.Pause;
        FQuery.ParamByName('Ort').AsInteger := cboOrt.ItemIndex;
        FQuery.ExecSQL;
        DecodeDate(Day.Datum,Y,M,D);
        BerechneTage(D,M,Y,FEmployee);
        MonthKeys.Add(Format('%.4d%.2d',[Y,M]));
      end;
      for I := 0 to MonthKeys.Count - 1 do
        BerechneMonat(StrToInt(Copy(MonthKeys[I],5,2)), StrToInt(Copy(MonthKeys[I],1,4)), FEmployee);
      dm_PCM.con_PCM.Commit;
    except
      if dm_PCM.con_PCM.InTransaction then dm_PCM.con_PCM.Rollback;
      raise;
    end;
  finally MonthKeys.Free; end;
  SetMessageDialog(1,Format('%d Tage importiert. Der heutige Tag wurde nicht veraendert.', [Count]),['Ok','',''],[mrOk,mrNone,mrNone]);
  ModalResult := mrOk;
end;

function ImportHRWorksPDF(AOwner: TForm; AMitarbeiter: Integer): Boolean;
var Dialog: TOpenDialog; Form: TImportForm; Days: THRWorksDays;
  Text, Source: string; FirstName, LastName: TMatch;
begin
  Result := False;
  if AMitarbeiter <= 0 then raise Exception.Create('Bitte zuerst einen Mitarbeiter auswaehlen.');
  Dialog := TOpenDialog.Create(AOwner);
  try
    Dialog.Title := 'HRworks-Arbeitszeiten-Kurzuebersicht importieren';
    Dialog.Filter := 'PDF-Dateien (*.pdf)|*.pdf';
    Dialog.Options := [ofFileMustExist, ofPathMustExist, ofEnableSizing];
    if not Dialog.Execute then Exit;
    Text := ReadImportPDF(Dialog.FileName);
    Days := ParseHRWorks(Text);
    Source := ExtractFileName(Dialog.FileName);
    FirstName := TRegEx.Match(Text, 'Vorname:\s*(.*?)\s+PLZ');
    LastName := TRegEx.Match(Text, 'Nachname:\s*(.*?)\s+Stra\S*:');
    if FirstName.Success and LastName.Success then
      Source := Source + ' (PDF-Person: ' + FirstName.Groups[1].Value + ' ' + LastName.Groups[1].Value + ')';
    Form := TImportForm.CreateImport(AOwner, AMitarbeiter, Days, Source);
    try Result := Form.ShowModal = mrOk; finally Form.Free; end;
  finally Dialog.Free; end;
end;

end.
