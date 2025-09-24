unit PCMTime.Modul.L_Reporting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, dxUIAClasses, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxLayoutContainer,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar,
  cxCheckBox, cxCheckComboBox, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons;

type
  Tfrm_Reports = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cmbbx_Bericht: TcxComboBox;
    loBericht: TdxLayoutItem;
    dxLayoutImageItem1: TdxLayoutImageItem;
    loFIrma: TdxLayoutItem;
    loAbteilung: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    cmbbx_Typ: TcxComboBox;
    loMitarbeiter: TdxLayoutItem;
    lgMonatJahr: TdxLayoutGroup;
    lgVonBis: TdxLayoutGroup;
    loMonat: TdxLayoutItem;
    loJahr: TdxLayoutItem;
    cmbbx_Monat: TcxComboBox;
    cmbbx_Jahr: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dedt_Von: TcxDateEdit;
    dedt_Bis: TcxDateEdit;
    cmbbx_Firma: TcxCheckComboBox;
    cmbbx_Abteilung: TcxCheckComboBox;
    cmbbx_Personal: TcxCheckComboBox;
    loBtns: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxButton1: TcxButton;
    procedure cmbbx_TypPropertiesChange(Sender: TObject);
    procedure cmbbx_BerichtPropertiesChange(Sender: TObject);
    procedure cmbbx_FirmaPropertiesChange(Sender: TObject);
    procedure cmbbx_AbteilungPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cmbbx_PersonalPropertiesChange(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    sFirma: String;
    sAbteilung: String;
    sPersonal: String;
    sFirmaParam: String;
    sAbteilungParam: String;
    sPersonalParam: String;
    procedure Execute(AFirma, AAbteilung, APersonal: String; AMonat, AJahr: Integer);
    procedure Fillpersonal;
  end;

var
  frm_Reports: Tfrm_Reports;

implementation

{$R *.dfm}

uses
  PCM.Data,
  PCM.Reports;

procedure Tfrm_Reports.Execute(AFirma, AAbteilung, APersonal: String; AMonat, AJahr: Integer);
var
  iJahr,iMonat,iTag: Word;
begin
  DecodeDate(Date,iJahr,iMonat,iTag);
  cmbbx_Monat.ItemIndex:= iMonat - 1;
  cmbbx_Jahr.ItemIndex:= cmbbx_Jahr.properties.Items.IndexOf(IntToStr(iJahr));
  sFirma:= '';
  sAbteilung:= '';
  sFirmaParam:= AFirma;
  sAbteilungParam:= AAbteilung;
  sPersonalParam:= APersonal;
end;
procedure Tfrm_Reports.Fillpersonal;
var
  NewItem: TcxCheckComboBoxItem;
begin
  cmbbx_Personal.Properties.Items.Clear;
  if (sFirma <> '') and (sAbteilung <> '') then
  begin
    cmbbx_Personal.Properties.EmptySelectionText := '<Mitarbeiter aus gewählter Firma und Abteilung>';
    dm_pcm.qry_Work.Sql.Text:= 'SELECT ID, Vorname, Nachname From Time_user Where ID_Firma in (' + sFirma + ') and ID_Abteilung in (' + sAbteilung + ')';
  end;
  if (sFirma <> '') and (sAbteilung = '')  then
  begin
    cmbbx_Personal.Properties.EmptySelectionText := '<Mitarbeiter aus gewählter Firma>';
    dm_pcm.qry_Work.Sql.Text:= 'SELECT ID, Vorname, Nachname From Time_user Where ID_Firma in (' + sFirma + ')';
  end;
  if (sFirma = '')  and (sAbteilung <> '') then
  begin
    cmbbx_Personal.Properties.EmptySelectionText := '<Mitarbeiter aus gewählter Abteilung>';
    dm_pcm.qry_Work.Sql.Text:= 'SELECT ID, Vorname, Nachname From Time_user Where ID_Abteilung in (' + sAbteilung + ')';
  end;
  if (sFirma = '')  and (sAbteilung =  '') then
  begin
    cmbbx_Personal.Properties.EmptySelectionText := '<Alle Mitarbeiter>';
    dm_pcm.qry_Work.Sql.Text:= 'SELECT ID, Vorname, Nachname From Time_user';
  end;
  dm_pcm.qry_Work.open;
  while not dm_PCM.qry_Work.eof do
  begin
    NewItem := cmbbx_Personal.Properties.Items.Add;
    NewItem.Description := dm_PCM.qry_Work.FieldByName('Nachname').AsString +  ', ' + dm_PCM.qry_Work.FieldByName('Vorname').AsString;
    NewItem.ShortDescription := dm_PCM.qry_Work.FieldByName('Nachname').AsString +  ', ' + dm_PCM.qry_Work.FieldByName('Vorname').AsString;
    NewItem.Tag := dm_PCM.qry_Work.FieldByName('ID').asInteger;
    dm_PCM.qry_Work.Next;
  end;
  dm_PCM.qry_Work.Close;

end;
procedure Tfrm_Reports.cmbbx_TypPropertiesChange(Sender: TObject);
begin
  sFirma:= '';
  sAbteilung:= '';
  sPersonal:= '';
  cmbbx_Bericht.Properties.Items.Clear;
  cmbbx_Bericht.Properties.OnChange:= nil;
  loBtns.Visible:= false;
  case cmbbx_Typ.ItemIndex of
  -1:
    begin
      loBericht.Visible:= false;
      loFirma.Visible:= false;
      loAbteilung.Visible:= false;
      loMitarbeiter.Visible:= false;
      lgMonatJahr.Visible:= false;
      loMonat.Visible:= false;
      loJahr.Visible:= false;
      lgVonBis.Visible:= false;
    end;
  0:
    begin
      cmbbx_Bericht.Properties.Items.AddObject('Bitte Bericht wählen',Tobject(100));
      cmbbx_Bericht.Properties.Items.AddObject('Personalauswertung',Tobject(101));
      loBericht.Visible:= true;
      loFirma.Visible:= false;
      loAbteilung.Visible:= false;
      loMitarbeiter.Visible:= false;
      lgMonatJahr.Visible:= false;
      loMonat.Visible:= false;
      loJahr.Visible:= false;
      lgVonBis.Visible:= false;
      cmbbx_Bericht.ItemIndex:= 0;
    end;
  1:
    begin
      cmbbx_Bericht.Properties.Items.AddObject('Bitte Bericht wählen',Tobject(200));
      cmbbx_Bericht.Properties.Items.AddObject('Monatsbericht',Tobject(201));
      cmbbx_Bericht.Properties.Items.AddObject('Monatsbericht mit Wochensummen',Tobject(202));
      loBericht.Visible:= true;
      loFirma.Visible:= false;
      loAbteilung.Visible:= false;
      loMitarbeiter.Visible:= false;
      lgMonatJahr.Visible:= false;
      loMonat.Visible:= false;
      loJahr.Visible:= false;
      lgVonBis.Visible:= false;
      cmbbx_Bericht.ItemIndex:= 0;
    end;
  2:
    begin
      cmbbx_Bericht.Properties.Items.AddObject('Bitte Bericht wählen',Tobject(300));
      cmbbx_Bericht.Properties.Items.AddObject('Jahreswerte',Tobject(301));
      loBericht.Visible:= true;
      loFirma.Visible:= false;
      loAbteilung.Visible:= false;
      loMitarbeiter.Visible:= false;
      lgMonatJahr.Visible:= false;
      loMonat.Visible:= false;
      loJahr.Visible:= false;
      lgVonBis.Visible:= false;
      cmbbx_Bericht.ItemIndex:= 0;
    end;
  3:
    begin
      cmbbx_Bericht.Properties.Items.AddObject('Bitte Bericht wählen',Tobject(400));
      cmbbx_Bericht.Properties.Items.AddObject('Monatsbericht variabel',Tobject(401));
      cmbbx_Bericht.Properties.Items.AddObject('Jahresbericht variabel',Tobject(402));
      loBericht.Visible:= true;
      loFirma.Visible:= false;
      loAbteilung.Visible:= false;
      loMitarbeiter.Visible:= false;
      lgMonatJahr.Visible:= false;
      loMonat.Visible:= false;
      loJahr.Visible:= false;
      lgVonBis.Visible:= false;
      cmbbx_Bericht.ItemIndex:= 0;
    end;
  end;
  cmbbx_Bericht.Properties.OnChange:= cmbbx_BerichtPropertiesChange;
end;
procedure Tfrm_Reports.cxButton1Click(Sender: TObject);
begin
  DruckeBericht(Integer(cmbbx_Bericht.Properties.Items.Objects[cmbbx_Bericht.ItemIndex]),sFirma,sAbteilung,sPersonal,cmbbx_Monat.ItemIndex+1, StrToInt(cmbbx_Jahr.Properties.Items[cmbbx_Jahr.ItemIndex]),dedt_Von.Date, dedt_Bis.date);
end;

procedure Tfrm_Reports.cmbbx_BerichtPropertiesChange(Sender: TObject);
var
  NewItem: TcxCheckComboBoxItem;
begin
  if cmbbx_Bericht.ItemIndex > 0 then
  begin
    cmbbx_Firma.Properties.Items.Clear;
    dm_PCM.qry_Work.SQl.Text:= 'SELECT id, nummer, Bezeichnung, if(Typ = 1, ''Hauptsitz'', ''Arbeitsort'') AS Typ FROM time_firma';
    dm_PCM.qry_Work.open;
    while not dm_PCM.qry_Work.eof do
    begin
      NewItem := cmbbx_Firma.Properties.Items.Add;
      NewItem.Description := dm_PCM.qry_Work.FieldByName('Nummer').AsString +  ' - ' + dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString +  ' - ' + dm_PCM.qry_Work.FieldByName('Typ').AsString;
      NewItem.ShortDescription := dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString +  ' - ' + dm_PCM.qry_Work.FieldByName('Typ').AsString;
      NewItem.Tag := dm_PCM.qry_Work.FieldByName('ID').asInteger;
      dm_PCM.qry_Work.Next;
    end;
    dm_PCM.qry_Work.Close;
    cmbbx_Abteilung.Properties.Items.Clear;
    dm_PCM.qry_Work.SQL.Text:= 'SELECT id, Nummer, Bezeichnung FROM time_Abteilung';
    dm_PCM.qry_Work.open;
    while not dm_PCM.qry_Work.Eof do
    begin
      NewItem := cmbbx_Abteilung.Properties.Items.Add;
      NewItem.Description := dm_PCM.qry_Work.FieldByName('Nummer').AsString +  ' - ' + dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString;
      NewItem.ShortDescription :=dm_PCM.qry_Work.FieldByName('Nummer').AsString +  ' - ' +  dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString;
      NewItem.Tag := dm_PCM.qry_Work.FieldByName('ID').asInteger;
      dm_PCM.qry_Work.Next;
    end;
    dm_PCM.qry_Work.Close;
    case Integer(cmbbx_bericht.Properties.Items.Objects[cmbbx_bericht.ItemIndex]) of
    101:
      begin
        loFirma.Visible:= true;
        loAbteilung.Visible:= true;
        loMitarbeiter.Visible:= true;
        lgMonatJahr.Visible:= false;
        loMonat.Visible:= false;
        loJahr.Visible:= false;
        lgVonBis.Visible:= false;
      end;
    201,202:
      begin
        loFirma.Visible:= true;
        loAbteilung.Visible:= true;
        loMitarbeiter.Visible:= true;
        lgMonatJahr.Visible:= true;
        loMonat.Visible:= true;
        loJahr.Visible:= true;
        lgVonBis.Visible:= false;
      end;
    301:
      begin
        loFirma.Visible:= true;
        loAbteilung.Visible:= true;
        loMitarbeiter.Visible:= true;
        lgMonatJahr.Visible:= true;
        loMonat.Visible:= false;
        loJahr.Visible:= true;
        lgVonBis.Visible:= false;
      end;
    401,402:
      begin
        loFirma.Visible:= true;
        loAbteilung.Visible:= true;
        loMitarbeiter.Visible:= true;
        lgMonatJahr.Visible:= true;
        loMonat.Visible:= false;
        loJahr.Visible:= false;
        lgVonBis.Visible:= true;
      end;
    end;
    loBtns.Visible:= true;
  end;
end;
procedure Tfrm_Reports.cmbbx_FirmaPropertiesChange(Sender: TObject);
begin
  if cmbbx_Firma.EditValue <> 0 then
  begin
    sFirma:= '';
    for var i := 0 to cmbbx_Firma.Properties.Items.Count - 1 do
    begin
      if cmbbx_Firma.GetItemState(i) = cbsChecked then
      begin
        sFirma:= sFirma + ',' + IntToStr(cmbbx_Firma.Properties.Items[i].Tag)
      end;
    end;
    sFirma:= Copy(sFirma,2,Length(sFirma));
  end
  else begin
    sFirma:= '';
  end;
  FillPersonal;
end;
procedure Tfrm_Reports.cmbbx_AbteilungPropertiesChange(Sender: TObject);
begin
  if cmbbx_Abteilung.EditValue <> 0 then
  begin
    sAbteilung:= '';
    for var i := 0 to cmbbx_Abteilung.Properties.Items.Count - 1 do
    begin
      if cmbbx_Abteilung.GetItemState(i) = cbsChecked then
      begin
        sAbteilung:= sAbteilung + ',' + IntToStr(cmbbx_Abteilung.Properties.Items[i].Tag)
      end;
    end;
    sAbteilung:= Copy(sAbteilung,2,Length(sAbteilung));
  end
  else begin
    sAbteilung:= '';
  end;
  FillPersonal;
end;
procedure Tfrm_Reports.cmbbx_PersonalPropertiesChange(Sender: TObject);
begin
  if cmbbx_Personal.EditValue <> 0 then
  begin
    sPersonal:= '';
    for var i := 0 to cmbbx_Personal.Properties.Items.Count - 1 do
    begin
      if cmbbx_Personal.GetItemState(i) = cbsChecked then
      begin
        sPersonal:= sPersonal + ',' + IntToStr(cmbbx_Personal.Properties.Items[i].Tag)
      end;
    end;
    sPersonal:= Copy(sPersonal,2,Length(sPersonal));
  end
  else begin
    sPersonal:= '';
  end;
end;

end.
