unit PCMTime.Calculate;

interface
////////////////////////////////////////////////////////////////////////////////
// Deklaration                                                                //
////////////////////////////////////////////////////////////////////////////////
{$Region Deklaration}
// Functions
function GetBuchungsart(ATyp,AMitarbeiter: integer; AVon,ABis: TDate) : integer;
function GetFehltagSumKik(AFeiertag, ATyp, ABezahlt, ASoll,AMitarbeiter: integer;AVon,ABis:TDate) : double;
function GetFehltagSum(AFeiertag, ATyp, ABezahlt,AMitarbeiter: integer;AVon,ABis:TDate) : double;
function GetFehltagTage(AID_Fehltage,AMitarbeiter: integer) : double;
function GetFeiertage(AMitarbeiter: Integer;AVon,ABis: TDate): double;
function GetMehrarbeitVorMonat(AMitarbeiter,AJahr,AMonat: integer): integer;
function GetMonthName(AMonat: integer) : String;
function GetPersonalSollStunden(AMitarbeiter: Integer): TTime;
function GetResturlaub(AMitarbeiter,AJahr,AMonat: integer) : double;
function GetTimeValue(AValue: integer) : String;
function GetULAnspruch(AMitarbeiter: Integer): double;
function GetULVorjahr(AMitarbeiter,AJahr,AMonat: integer) : double;
function GetULVorMonat(AMitarbeiter,AJahr,AMonat: integer) : double;
// Proceduren
procedure BerechneMonat(AMonat,AJahr,AMitarbeiter: integer);
procedure BerechneMonate(AMitarbeiter: integer);
procedure BerechneTage(ATag,AMonat,AJahr,AMitarbeiter: integer);
procedure StartBooking(AMitarbeiter: integer;ACaption,AMessage,ALocation: String;AStart,AFinish: TDateTime; ACalCol,AFontCol: integer);
procedure WriteMonatswert(AMitarbeiter:Integer;ARest: Double;AaktGLZ,AMonat,AJahr,ASollzeit,AIStzeit,AMehrarbeit,APausen,AFeiertag: integer; AUrlaub_bezahlt,AUrlaub_unbezahlt,AKrank_bezahlt,AKrank_unbezahlt: double);
{$EndRegion Deklaration}
implementation

uses
{$Region Uses}
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Async,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  PCM.Data,
  PCM.Functions.Synch.Wait,
  PCM.Strings,
  PCM.Main,
  System.Classes,
  System.DateUtils,
  System.Sysutils,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Menus,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows;
{$EndRegion Uses}
// Functions
{$Region Functions}
function ReadIntegerField(AField: TField): Integer;
begin
  try
    Result := AField.AsInteger;
  except
    on E: EConvertError do
    begin
      E.Message := Format('Feld %s, Wert "%s": %s',
        [AField.FieldName, AField.AsString, E.Message]);
      raise;
    end;
  end;
end;
function GetBuchungsart(ATyp,AMitarbeiter: integer; AVon,ABis: TDate) : integer;
var
  qry_BA: TFDQuery;
begin
  qry_BA:= TFDQuery.Create(nil);
  qry_BA.Connection:= dm_PCM.con_PCM;

  qry_BA.SQL.Text:= 'SELECT Count(*) as Anzahl ' +
                    'FROM time_buchungen zeb ' +
                    'LEFT OUTER JOIN time_Fehltag zeft ON zeft.Kuerzel = zeb.Fehltag ' +
                    'WHERE Kommen <> ''00:00'' and  zeb.Datum >= :Von and zeb.Datum <= :Bis AND Buchungsart = :Typ and zeb.ID_Benutzer = :ID';
  qry_BA.ParamByName('Von').asDate:= AVon;
  qry_BA.ParamByName('Bis').asDate:= ABis;
  qry_BA.ParamByName('Typ').asInteger:= ATyp;
  qry_BA.ParamByName('ID').asInteger:= AMitarbeiter;
  qry_BA.Prepare;
  qry_BA.open;
  Result:= ReadIntegerField(qry_BA.FieldByName('Anzahl'));
  qry_BA.close;
  qry_BA.UnPrepare;
  qry_BA.free;
end;
function GetFehltagSumKik(AFeiertag, ATyp, ABezahlt,ASoll,AMitarbeiter: integer;AVon,ABis:TDate) : double;
var
  qry_FT: TFDQuery;
begin
  qry_FT:= TFDQuery.Create(nil);
  qry_FT.Connection:= dm_PCM.con_PCM;
  qry_FT.SQL.Text:=  'SELECT Count(*) as Anzahl ' +
                     'FROM time_buchungen zeb ' +
                     'LEFT OUTER JOIN time_Fehltag zeft ON zeft.Kuerzel = zeb.Fehltag ' +
                     'WHERE  Zeb.ID_benutzer = :ID and zeb.Feiertag <> :Feiertag and zeb.Datum >= :Von and zeb.Datum <= :Bis AND zeft.Typ = :Typ AND zeft.Bezahlt = :Bezahlt AND zeft.SollAbziehen = :Soll';
  qry_FT.ParamByName('Von').asDate:= AVon;
  qry_FT.ParamByName('Bis').asDate:= ABis;
  qry_FT.ParamByName('Feiertag').AsInteger:= AFeiertag;
  qry_FT.ParamByName('Typ').AsInteger:= ATyp;
  qry_FT.ParamByName('Bezahlt').AsInteger:= ABezahlt;
  qry_FT.ParamByName('Soll').AsInteger:= ASoll;
  qry_FT.ParamByName('ID').AsInteger:= AMitarbeiter;
  qry_FT.Prepare;
  qry_FT.open;
  result:= qry_FT.FieldByName('Anzahl').AsFloat;
  qry_FT.close;
  qry_FT.UnPrepare;
  qry_FT.free;
end;
function GetFehltagSum(AFeiertag, ATyp, ABezahlt,AMitarbeiter: integer;AVon,ABis:TDate) : double;
var
  qry_FT: TFDQuery;
begin
  qry_FT:= TFDQuery.Create(nil);
  qry_FT.Connection:= dm_PCM.con_PCM;
  qry_FT.SQL.Text:=  'SELECT COALESCE(SUM(Zeb.SollstundenI / NULLIF(zeft.Faktor, 0) / NULLIF(HOUR(zzp.Sollzeit) * 60 + MINUTE(zzp.Sollzeit), 0)), 0) AS Anzahl ' +
                     'FROM time_buchungen zeb ' +
                     'LEFT OUTER JOIN time_buchung zeb1 ON zeb1.ID = zeb.ID_Buchung ' +
                     'LEFT OUTER JOIN time_zeitplan zzp ON zzp.id = zeb1.ID_Tagesplan ' +
                     'LEFT OUTER JOIN time_Fehltag zeft ON zeft.Kuerzel = zeb.Fehltag ' +
                     'WHERE zeb.ID_Benutzer =:ID and zeb.Feiertag <> :Feiertag AND zzp.Sollzeit <> ''00:00'' AND zeb.Sollstunden = zzp.Sollzeit and zeb.Datum >= :Von and zeb.Datum <= :Bis AND zeft.Typ = :Typ AND zeft.Bezahlt = :Bezahlt';
  qry_FT.ParamByName('Von').asDate:= AVon;
  qry_FT.ParamByName('Bis').asDate:= ABis;
  qry_FT.ParamByName('Feiertag').AsInteger:= AFeiertag;
  qry_FT.ParamByName('Typ').AsInteger:= ATyp;
  qry_FT.ParamByName('Bezahlt').AsInteger:= ABezahlt;
  qry_FT.ParamByName('ID').AsInteger:= AMitarbeiter;
  qry_FT.Prepare;
  qry_FT.open;
  result:= qry_FT.FieldByName('Anzahl').AsFloat;
  qry_FT.close;
  qry_FT.UnPrepare;
  qry_FT.free;
end;
function GetFehltagTage(AID_Fehltage,AMitarbeiter: integer) : double;
var
  qry_FT: TFDQuery;
begin
  qry_FT:= TFDQuery.Create(nil);
  qry_FT.Connection:= dm_PCM.con_PCM;
  qry_FT.SQL.Text:=  'Select Sum(TIMESTAMPDIFF(SECOND,''1970-01-01 00:00:00'',ADDTIME(CONVERT(''1970-01-01'', DATETIME), zeb.Sollstunden)) / 60 / ((HOUR(zzp.Sollzeit) * 60) + Minute(zzp.Sollzeit)) / zeft.Faktor) as Anzahl ' +
                     'FROM time_buchungen zeb ' +
                     'LEFT OUTER JOIN time_buchung zeb1 ON zeb1.ID = zeb.ID_Buchung ' +
                     'LEFT OUTER JOIN time_zeitplan zzp ON zzp.id = zeb1.ID_Tagesplan ' +
                     'LEFT OUTER JOIN time_Fehltag zeft ON zeft.Kuerzel = zeb.Fehltag ' +
                     'WHERE zeb.id_benutzer = :ID and zeb.Feiertag <> 1 AND zeb.Sollstunden = zzp.Sollzeit AND zzp.Sollzeit <> ''00:00'' and ID_Fehltage = :IDFT';
  qry_FT.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
  qry_FT.ParamByName('IDFT').AsInteger:= AID_Fehltage;
  qry_FT.ParamByName('ID').AsInteger:= AMitarbeiter;
  qry_FT.Prepare;
  qry_FT.open;
  result:= qry_FT.FieldByName('Anzahl').AsFloat;
  qry_FT.close;
  qry_FT.UnPrepare;
  qry_FT.free;
end;
function GetFeiertage(AMitarbeiter: integer;AVon,ABis: TDate) : double;
var
  qry_FT: TFDQuery;
begin
  qry_FT:= TFDQuery.Create(nil);
  qry_FT.Connection:= dm_PCM.con_PCM;
  qry_FT.SQL.Text:= 'SELECT Sum(if(Feiertag = 2, 0.5,1)) AS Anzahl ' +
                    'FROM time_buchungen zeb ' +
                    'LEFT OUTER JOIN time_buchung zeb1 ON zeb1.ID = zeb.ID_Buchung ' +
                    'LEFT OUTER JOIN time_zeitplan zzp ON zzp.id = zeb1.ID_Tagesplan ' +
                    'WHERE zeb.ID_Benutzer = :ID AND zzp.Sollzeit <> ''00:00'' and zeb.Sollstunden = zzp.Sollzeit and zeb.Datum >= :Von and zeb.Datum <= :Bis AND zeb.feiertag > 0';
  qry_FT.ParamByName('ID').AsInteger:= AMitarbeiter;
  qry_FT.ParamByName('Von').asDate:= AVon;
  qry_FT.ParamByName('Bis').asDate:= ABis;
  qry_FT.Prepare;
  qry_FT.open;
  Result:= qry_FT.FieldByName('Anzahl').AsFloat;
  qry_FT.close;
  qry_FT.UnPrepare;
  qry_FT.free;
end;
function GetMehrarbeitVorMonat(AMitarbeiter,AJahr,AMonat: integer): integer;
var
  qry_MA: TFDQuery;
begin
  qry_MA:= TFDQuery.Create(nil);
  qry_MA.Connection:= dm_PCM.con_PCM;
  qry_MA.SQL.Text:= 'Select aktuelleMehrarbeit From time_Monatswerte Where ID_Benutzer = :ID and Jahr = :Jahr and Monat = :Monat';
  qry_MA.ParamByName('ID').AsInteger:= AMitarbeiter;
  qry_MA.ParamByName('Jahr').AsInteger:= AJahr;
  qry_MA.ParamByName('Monat').AsInteger:= AMonat;
  qry_MA.Prepare;
  qry_MA.open;
  result:= ReadIntegerField(qry_MA.FieldByName('aktuelleMehrarbeit'));
  qry_MA.close;
  qry_MA.UnPrepare;
  qry_MA.free;
end;
function GetMonthName(AMonat: integer) : String;
begin
  case AMonat of
  1: result:= 'Januar';
  2: result:= 'Februar';
  3: result:= 'März';
  4: result:= 'April';
  5: result:= 'Mai';
  6: result:= 'Juni';
  7: result:= 'Juli';
  8: result:= 'August';
  9: result:= 'September';
  10: result:= 'Oktober';
  11: result:= 'November';
  12: result:= 'Dezember';
  end;
end;
function GetPersonalSollStunden(AMitarbeiter: Integer): TTime;
var
  qry_Soll: TFDQuery;
begin
  qry_Soll:= TFDQuery.Create(nil);
  qry_Soll.Connection:= dm_PCM.con_PCM;
  qry_Soll.SQL.Text:= 'Select Sollstunden From time_user Where ID = :ID';
  qry_Soll.ParamByName('ID').AsInteger:= AMitarbeiter;
  qry_Soll.Prepare;
  qry_Soll.open;
  result:= qry_Soll.FieldByName('Sollstunden').asDateTime;
  qry_Soll.close;
  qry_Soll.UnPrepare;
  qry_Soll.free;
end;
function GetResturlaub(AMitarbeiter,AJahr,AMonat: integer) : double;
var
  qry_Rul: TFDQuery;
begin
  qry_Rul:= TFDQuery.Create(nil);
  qry_Rul.Connection:= dm_PCM.con_PCM;
  qry_Rul.SQL.Text:= 'Select Resturlaub From time_Monatswerte Where Monat = :Monat and Jahr = :Jahr and ID_Benutzer = :ID';
  qry_Rul.ParamByName('Jahr').AsInteger:= AJahr;
  qry_Rul.ParamByName('Monat').AsInteger:= AMonat;
  qry_Rul.ParamByName('ID').AsInteger:= AMitarbeiter;
  qry_Rul.Prepare;
  qry_Rul.open;
  result:= qry_Rul.FieldByName('Resturlaub').AsFloat;
  qry_Rul.close;
  qry_Rul.UnPrepare;
  qry_Rul.free;
end;
function GetTimeValue(AValue: integer) : String;
var
  iMinutes: Int64;
begin
  iMinutes := Abs(Int64(AValue));
  Result := Format('%.2d:%.2d', [iMinutes div 60, iMinutes mod 60]);
  if AValue < 0 then
    Result := '-' + Result;
end;
function GetULAnspruch(AMitarbeiter: Integer): double;
var
  qry_UL: TFDQuery;
begin
  qry_UL:= TFDQuery.Create(nil);
  qry_UL.Connection:= dm_PCM.con_PCM;
  qry_UL.SQL.Text:= 'Select Urlaub From time_user Where ID = :ID';
  qry_UL.ParamByName('ID').AsInteger:= AMitarbeiter;
  qry_UL.Prepare;
  qry_UL.open;
  result:= qry_UL.FieldByName('Urlaub').AsFloat;
  qry_UL.Close;
  qry_UL.UnPrepare;
  qry_UL.free;
end;
function GetULVorjahr(AMitarbeiter,AJahr,AMonat: integer) : double;
var
  qry_UL: TFDQuery;
begin
  qry_UL:= TFDQuery.Create(nil);
  qry_UL.Connection:= dm_PCM.con_PCM;
  qry_UL.SQL.Text:= 'Select Resturlaub From time_Monatswerte Where ID_Benutzer = :ID and Jahr = :Jahr and Monat = :Monat';
  qry_UL.ParamByName('ID').AsInteger:= AMitarbeiter;
  qry_UL.ParamByName('Jahr').AsInteger:= AJahr;
  qry_UL.ParamByName('Monat').AsInteger:= AMonat;
  qry_UL.Prepare;
  qry_UL.open;
  result:= qry_UL.FieldByName('Resturlaub').AsFloat;
  qry_UL.Close;
  qry_UL.UnPrepare;
  qry_UL.free;


  dm_pcm.qry_Work1.SQL.Text:= 'SELECT OffsetResturlaubJahr,OffsetResturlaub From time_user where ID =:ID';
  dm_pcm.qry_Work1.ParamByName('ID').AsInteger:= AMitarbeiter;
  dm_pcm.qry_Work1.Open;
  var fOffsetResturlaub:= dm_pcm.qry_Work1.FieldByName('OffsetResturlaub').AsFloat;
  var iOffsetResturlaubJahr:= ReadIntegerField(dm_pcm.qry_Work1.FieldByName('OffsetResturlaubJahr'));
  dm_pcm.qry_Work1.Close;
  if (iOffsetResturlaubJahr = AJahr) and (AMonat = 12) then
  begin
    Result:= fOffsetResturlaub;
  end;




end;
function GetULVormonat(AMitarbeiter,AJahr,AMonat: integer) : double;
var
  qry_UL: TFDQuery;
begin
  qry_UL:= TFDQuery.Create(nil);
  qry_UL.Connection:= dm_PCM.con_PCM;
  qry_UL.SQL.Text:= 'Select Resturlaub From time_Monatswerte Where ID_Benutzer = :ID and Jahr = :Jahr and Monat = :Monat';
  qry_UL.ParamByName('ID').AsInteger:= AMitarbeiter;
  qry_UL.ParamByName('Jahr').AsInteger:= AJahr;
  qry_UL.ParamByName('Monat').AsInteger:= AMonat;
  qry_UL.Prepare;
  qry_UL.open;
  result:= qry_UL.FieldByName('Resturlaub').AsFloat;
  qry_UL.Close;
  qry_UL.UnPrepare;
  qry_UL.free;
end;
{$EndRegion Functions}
// Proceduren
{$Region Procedures}
procedure BerechneTage(ATag,AMonat,AJahr,AMitarbeiter: integer);
var
  dtFinish: TDateTime;
  dtStart: TDateTime;
  iArbeitszeit: integer;
  iBreakCalCol: integer;
  iBreakFontCol: integer;
  iFehltag: integer;
  iFeiertag: integer;
  iMehrarbeit,i: integer;
  iPause1: integer;
  iPause2: integer;
  iSollstunden: integer;
  iWorkCalCol: integer;
  iWorkFontCol: integer;
  sFehltag: String;
  sLastLine: String;
  tGehen: TTime;
  tkommen: TTime;
  tPause1Beginn: TTime;
  tPause1Ende: TTime;
  tPause2Beginn: TTime;
  tPause2Ende: TTime;
begin
  dm_PCM.qry_work.SQL.Text:= 'Select ColFontWork,ColCalWork,ColFontBreak,ColCalBreak From time_user Where ID = :ID';
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= AMitarbeiter;
  dm_PCM.qry_work.open;
  iWorkFontCol:= ReadIntegerField(dm_PCM.qry_work.FieldByName('ColFontWork'));
  iWorkCalCol:= ReadIntegerField(dm_PCM.qry_work.FieldByName('ColCalWork'));
  iBreakFontCol:= ReadIntegerField(dm_PCM.qry_work.FieldByName('ColFontBreak'));
  iBreakCalCol:= ReadIntegerField(dm_PCM.qry_work.FieldByName('ColCalBreak'));
  dm_PCM.qry_work.close;

  if ATag > 0 then
  begin
    dm_pcm.qry_Calc.SQL.Text:= 'SELECT ze_b.*, ze_FT.* FROM time_buchungen ze_B ' +
                               'LEFT OUTER  JOIN time_Fehltag ze_ft ON ze_ft.Kuerzel = ze_B.Fehltag ' +
                               'WHERE ze_B.Datum = :Datum and ID_Benutzer =:ID order by ze_B.Datum';
    dm_pcm.qry_Calc.ParamByName('Datum').AsDate:= EncodeDate(AJahr,AMonat,ATag);
    dm_pcm.qry_Calc.ParamByName('ID').AsInteger:= AMitarbeiter;
    WaitFormSetText(rs_Function_Helper_BerechneTag + IntToStr(ATag) + '. ' + GetMonthName(AMonat) + rs_Function_Helper_BerechneYearEnd + IntToStr(AJahr));
  end
  else begin
    if AMonat > 0 then
    begin
      dm_pcm.qry_Calc.SQL.Text:= 'SELECT ze_b.*, ze_FT.* FROM time_buchungen ze_B ' +
                                 'LEFT OUTER  JOIN time_Fehltag ze_ft ON ze_ft.Kuerzel = ze_B.Fehltag ' +
                                 'WHERE MONTH(ze_B.Datum) = :monat and YEAR(ze_B.Datum) = :jahr and abgeschlossen is null and ID_Benutzer =:ID order by ze_B.Datum';
      dm_pcm.qry_Calc.ParamByName('monat').AsInteger:= AMonat;
      dm_pcm.qry_Calc.ParamByName('jahr').AsInteger:= AJahr;
      dm_pcm.qry_Calc.ParamByName('ID').AsInteger:= AMitarbeiter;
      WaitFormSetText(rs_Function_Helper_BerechneMonat + GetMonthName(AMonat) + rs_Function_Helper_BerechneYearEnd + IntToStr(AJahr));
    end
    else begin
      dm_pcm.qry_Calc.SQL.Text:= 'SELECT ze_b.*, ze_FT.* FROM time_buchungen ze_B ' +
                                 'LEFT OUTER  JOIN time_Fehltag ze_ft ON ze_ft.Kuerzel = ze_B.Fehltag ' +
                                 'WHERE ze_B.Datum >= :Von and ze_B.Datum <= :Bis and abgeschlossen is null and ID_Benutzer =:ID order by ze_B.Datum';
      dm_pcm.qry_Calc.ParamByName('Von').AsDate:= EncodeDate(AJahr,1,1);
      dm_pcm.qry_Calc.ParamByName('Bis').AsDate:= EncodeDate(AJahr,12,31);
      dm_pcm.qry_Calc.ParamByName('ID').AsInteger:= AMitarbeiter;
      WaitFormSetText(rs_Function_Helper_BerechneJahr  + IntToStr(AJahr));
    end;

  end;
  dm_pcm.qry_Calc.open;
  WaitFormSetNewCount(dm_pcm.qry_Calc.RecordCount);
  i:= 1;
  while not dm_pcm.qry_Calc.eof do
  begin
    WaitFormPosition(i);
    i:= i+1;
    iFehltag:= 0;
    iFeiertag:= 0;
    iSollstunden:= 0;
    WaitFormSetText(rs_Function_Helper_Berechne + dm_pcm.qry_Calc.FieldByName('Datum').AsString);
    if dm_pcm.qry_Calc.FieldByName('Datum').asDateTime < Date then
    begin
      iSollstunden:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
      if ((ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Bezahlt')) = 1) and  (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Faktor')) = 1))  then
      begin
        iFehltag:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
        if ReadIntegerField(dm_pcm.qry_Calc.FieldByName('SollAbziehen')) = 1 then
          iFehltag:= 0;

      end;

      if ((ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Bezahlt')) = 0) and  (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('SollAbziehen')) = 1))  then
        iSollstunden:= 0;

      if  ((ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Bezahlt')) = 1) and  (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Faktor')) = 2)) then
        iFehltag:= Round(MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00')) / 2);
      if (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Feiertag')) = 2) then
        iFeiertag:= Round(MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00')) / 2);
      if (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Feiertag')) = 1) then
        iFeiertag:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
      if (iFeiertag = iFehltag) and (iFeiertag = 480) then
        iFehltag := 0;
      iArbeitszeit:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Gehen').asDateTime,dm_pcm.qry_Calc.FieldByName('Kommen').asDateTime);
      iPause1:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Pause1Ende').asDateTime,dm_pcm.qry_Calc.FieldByName('Pause1Beginn').asDateTime);
      iPause2:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Pause2Ende').asDateTime,dm_pcm.qry_Calc.FieldByName('Pause2Beginn').asDateTime);
    end
    else begin
      if dm_pcm.qry_Calc.FieldByName('Datum').asDateTime = Date then
      begin
        iSollstunden:= MinutesBetween(dm_PCM.qry_Calc.FieldByName('Sollstunden').AsDateTime,StrToTime('00:00'));
        // Bezahlte Abwesenheit ganzer Tag
        if ((ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Bezahlt')) = 1) and  (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Faktor')) = 1))  then
          iFehltag:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
        // Bezahlte Abwesenheit halber Tag
        if  ((ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Bezahlt')) = 1) and  (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Faktor')) = 2)) then
          iFehltag:= Round(MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00')) / 2);
        if (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Feiertag')) = 2) then
          iFeiertag:= Round(MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00')) / 2);
        if (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Feiertag')) = 1) then
          iFeiertag:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
        if (iFeiertag = iFehltag) and (iFeiertag = 480) then
          iFehltag := 0;
      end;
      if (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Bezahlt')) > 0 ) or ((ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Feiertag')) > 0 ) and (dm_pcm.qry_Calc.FieldByName('Sollstunden').AsDateTime <> StrToTime('00:00:00'))) then
      begin
        iSollstunden:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
        // Bezahlte Abwesenheit ganzer Tag
        if ((ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Bezahlt')) = 1) and  (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Faktor')) = 1))  then
          iFehltag:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
        // Bezahlte Abwesenheit halber Tag
        if  ((ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Bezahlt')) = 1) and  (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Faktor')) = 2)) then
          iFehltag:= Round(MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00')) / 2);
        if (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Feiertag')) = 2) then
          iFeiertag:= Round(MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00')) / 2);
        if (ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Feiertag')) = 1) then
          iFeiertag:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
        if (iFeiertag = iFehltag) and (iFeiertag = 480) then
          iFehltag := 0;
      end;




      // Arbeitszeit
      if (dm_pcm.qry_Calc.FieldByName('Kommen').asDateTime <> StrToTime('00:00:00')) and (dm_pcm.qry_Calc.FieldByName('Gehen').asDateTime = StrToTime('00:00:00')) then
      begin
        iArbeitszeit:= MinutesBetween(TimeOf(Now),dm_pcm.qry_Calc.FieldByName('Kommen').asDateTime);
      end
      else begin
        iArbeitszeit:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Gehen').asDateTime,dm_pcm.qry_Calc.FieldByName('Kommen').asDateTime);
      end;
      // Pause 1
      if (dm_pcm.qry_Calc.FieldByName('Pause1Beginn').asDateTime <> StrToTime('00:00:00')) and (dm_pcm.qry_Calc.FieldByName('Pause1Ende').asDateTime = StrToTime('00:00:00')) then
      begin
        iPause1:= 0
      end
      else begin
        iPause1:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Pause1Ende').asDateTime,dm_pcm.qry_Calc.FieldByName('Pause1Beginn').asDateTime);
      end;
      // Pause 2
      if (dm_pcm.qry_Calc.FieldByName('Pause2Beginn').asDateTime <> StrToTime('00:00:00')) and (dm_pcm.qry_Calc.FieldByName('Pause2Ende').asDateTime = StrToTime('00:00:00')) then
      begin
        iPause2:= 0
      end
      else begin
        iPause2:= MinutesBetween(dm_pcm.qry_Calc.FieldByName('Pause2Ende').asDateTime,dm_pcm.qry_Calc.FieldByName('Pause2Beginn').asDateTime);
      end;
    end;
    iMehrarbeit:= iArbeitszeit - iSollstunden - iPause1 - iPause2 + iFehltag + iFeiertag;
    dm_pcm.qry_Work2.SQL.Text:= 'Update time_buchungen set ' +
                              'SollstundenI = :SollstundenI,' +
                              'ArbeitszeitI = :ArbeitszeitI,' +
                              'Arbeitszeit = :Arbeitszeit,' +
                              'MehrarbeitI = :MehrarbeitI,' +
                              'Mehrarbeit = :Mehrarbeit,' +
                              'PausenI = :PausenI,' +
                              'FeiertagI = :FeiertagI ' +
                              'Where Datum = :Datum and ID_Benutzer =:ID';
    dm_pcm.qry_Work2.ParamByname('SollstundenI').AsInteger:= iSollstunden; //MinutesBetween(dm_pcm.qry_Calc.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
    dm_pcm.qry_Work2.ParamByname('ArbeitszeitI').AsInteger:= iArbeitszeit - iPause1 - iPause2 + iFehltag + iFeiertag;
    dm_pcm.qry_Work2.ParamByname('Arbeitszeit').AsString:= GetTimeValue(iArbeitszeit - iPause1 - iPause2 + iFehltag + iFeiertag);
    dm_pcm.qry_Work2.ParamByname('MehrarbeitI').AsInteger:= iMehrarbeit;
    if iMehrarbeit < 0  then
      dm_pcm.qry_Work2.ParamByname('Mehrarbeit').asString:= '-' + GetTimeValue(iMehrarbeit *-1)
    else
      dm_pcm.qry_Work2.ParamByname('Mehrarbeit').asString:= GetTimeValue(iMehrarbeit);
    dm_pcm.qry_Work2.ParamByname('PausenI').AsInteger:= iPause1 + iPause2;
    dm_pcm.qry_Work2.ParamByname('FeiertagI').AsInteger:= iFeiertag;
    dm_pcm.qry_Work2.ParamByname('Datum').AsDate:= dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime;
    dm_pcm.qry_Work2.ParamByname('ID').asInteger:= AMitarbeiter;
    dm_pcm.qry_Work2.execsql;


    sLastLine:= 'Netto ohne Pausenabzug: ' +  FormatDateTime('hh:mm',IncMinute(StrToTime('00:00'),iArbeitszeit)) + slinebreak +
                'Netto mit Pausenabzug: ' +  FormatDateTime('hh:mm',IncMinute(StrToTime('00:00'),iArbeitszeit - iPause1 - iPause2))+ slinebreak +
                'Brutto mit Fehltag: ' +  FormatDateTime('hh:mm',IncMinute(StrToTime('00:00'),iArbeitszeit + iFehltag - iPause1 - iPause2))+ slinebreak +
                'Feiertagsgutschrift: ' +  FormatDateTime('hh:mm',IncMinute(StrToTime('00:00'),iFeiertag))+ slinebreak +
                'Pausen: ' +  FormatDateTime('hh:mm',IncMinute(StrToTime('00:00'),iPause1+iPause2))+ slinebreak +
                'Mehrarbeit: ' +  GetTimeValue(iMehrarbeit);

    dm_PCm.qry_Work.SQL.Text:= 'Delete FROM time_kalender WHERE DATE(START) = :Date and Kalendername = :Name and ID_Benutzer = :ID';
    dm_PCm.qry_Work.ParamByName('Date').AsDate := dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime;
    dm_PCm.qry_Work.ParamByName('Name').AsString := 'Buchungen';
    dm_PCm.qry_Work.ParamByName('ID').asInteger := AMitarbeiter;
    dm_PCm.qry_Work.ExecSQL;
    tkommen:= dm_pcm.qry_Calc.FieldByName('Kommen').asDateTime;
    tGehen:= dm_pcm.qry_Calc.FieldByName('Gehen').asDateTime;
    tPause1Beginn:= dm_pcm.qry_Calc.FieldByName('Pause1Beginn').asDateTime;
    tPause1Ende:= dm_pcm.qry_Calc.FieldByName('Pause1Ende').asDateTime;
    tPause2Beginn:= dm_pcm.qry_Calc.FieldByName('Pause2Beginn').asDateTime;
    tPause2Ende:= dm_pcm.qry_Calc.FieldByName('Pause2Ende').asDateTime;
    sFehltag:= dm_pcm.qry_Calc.FieldByName('Fehltag').AsString;
    // Kommen und Gehen vorhanden
    if (tkommen <> StrToTime('00:00')) and (tGehen <> StrToTime('00:00')) then
    begin
      // Pause 1 vorhanden
      if (tPause1Beginn <> StrToTime('00:00')) and (tPause1Ende <> StrToTime('00:00')) then
      begin
        // Pause 2 vorhanden
        if (tPause2Beginn <> StrToTime('00:00')) and (tPause2Ende <> StrToTime('00:00')) then
        begin
          dtStart:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tKommen));
          dtFinish:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tPause1Beginn));
          StartBooking(AMitarbeiter,'Arbeitszeit','','Buchungen',dtStart,dtFinish,iWorkCalCol,iWorkFontCol);

          dtStart:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tPause1Beginn));
          dtFinish:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tPause1Ende));
          StartBooking(AMitarbeiter,'Pause','','Buchungen',dtStart,dtFinish,iBreakCalCol,iBreakFontCol);

          dtStart:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tPause1Ende));
          dtFinish:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tPause2Beginn));
          StartBooking(AMitarbeiter,'Arbeitszeit','','Buchungen',dtStart,dtFinish,iWorkCalCol,iWorkFontCol);

          dtStart:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tPause2Beginn));
          dtFinish:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tPause2Ende));
          StartBooking(AMitarbeiter,'Pause','','Buchungen',dtStart,dtFinish,iBreakCalCol,iBreakFontCol);

          dtStart:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tPause2Ende));
          dtFinish:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tGehen));
          StartBooking(AMitarbeiter,'Arbeitszeit',sLastLine,'Buchungen',dtStart,dtFinish,iWorkCalCol,iWorkFontCol);
        end
        else begin
          dtStart:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tKommen));
          dtFinish:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tPause1Beginn));
          StartBooking(AMitarbeiter,'Arbeitszeit','','Buchungen',dtStart,dtFinish,iWorkCalCol,iWorkFontCol);

          dtStart:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tPause1Beginn));
          dtFinish:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tPause1Ende));
          StartBooking(AMitarbeiter,'Pause','','Buchungen',dtStart,dtFinish,iBreakCalCol,iBreakFontCol);

          dtStart:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tPause1Ende));
          dtFinish:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tGehen));
          StartBooking(AMitarbeiter,'Arbeitszeit',sLastLine,'Buchungen',dtStart,dtFinish,iWorkCalCol,iWorkFontCol);
        end;
      end
      else begin
        dtStart:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tKommen));
        dtFinish:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' ' + TimeToStr(tGehen));
        StartBooking(AMitarbeiter,'Arbeitszeit',sLastLine,'Buchungen',dtStart,dtFinish,iWorkCalCol,iWorkFontCol);
      end;
    end;
    // Wenn Fehltag vorahnden
    if sFehltag <> '' then
    begin
      dm_PCM.qry_Work.SQL.Text:= 'Select Beschreibung, Color,ColorFont From time_Fehltag WHere Kuerzel = :Kuerzel';
      dm_PCM.qry_Work.ParamByName('Kuerzel').asString:= sFehltag;
      dm_PCM.qry_Work.open;
      var sFehltagDesc:= dm_PCM.qry_Work.Fieldbyname('Beschreibung').asString;
      var iCol:= ReadIntegerField(dm_PCM.qry_Work.Fieldbyname('Color'));
      var iColFont:= ReadIntegerField(dm_PCM.qry_Work.Fieldbyname('ColorFont'));
      dm_PCM.qry_Work.Close;
      if sFehltagDesc <> '' then
      begin
        dtStart:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' 08:00');
        dtFinish:= StrToDateTime(DateToStr(dm_pcm.qry_Calc.FieldByName('Datum').AsDateTime) + ' 17:00' );
        StartBooking(AMitarbeiter,sFehltagDesc,sLastLine,'Fehltag',dtStart,dtFinish,iCol,iColFont);
      end;
    end;
    dm_pcm.qry_Calc.next;
  end;
  dm_pcm.qry_Calc.close;
//  frm_ZE.qry_Buchungen.refresh;
  if dm_PCm.qry_Kalender_Kalender.Active then
    dm_PCm.qry_Kalender_Kalender.Refresh;
end;
procedure BerechneMonat(AMonat,AJahr,AMitarbeiter: integer);
var
  iSollzeit: integer;
  iIStzeit: integer;
  iMehrarbeit: integer;
  iFeiertag: integer;
  iPausen: integer;
  iUrlaub_bezahlt: double;
  iUrlaub_unbezahlt: double;
  iKrank_bezahlt: double;
  iKrank_unbezahlt: double;
  fULges: double;
  fResturlaub: double;
  fULgen: double;
  fJahresAnspruch: double;
  iaktGLZ: integer;
  iVMonat: integer;
  ivJahr: integer;
  fOffsetResturlaub: double;
  iOffsetResturlaubJahr: integer;
begin
  if AMonat = 0 then
  begin

  end
  else begin
    iVMonat := AMonat -1;
    iVJahr:= Ajahr;
    if iVMonat = 0 then
    begin
      iVMonat := 12;
      iVJahr:= Ajahr-1;
    end;
    dm_pcm.qry_Work1.SQL.Text:= 'SELECT OffsetResturlaubJahr,OffsetResturlaub From time_user where ID =:ID';
    dm_pcm.qry_Work1.ParamByName('ID').AsInteger:= AMitarbeiter;
    dm_pcm.qry_Work1.Open;
    fOffsetResturlaub:= dm_pcm.qry_Work1.FieldByName('OffsetResturlaub').AsFloat;
    iOffsetResturlaubJahr:= ReadIntegerField(dm_pcm.qry_Work1.FieldByName('OffsetResturlaubJahr'));
    dm_pcm.qry_Work1.Close;
    fResturlaub:= GetULVorMonat(AMitarbeiter,iVJahr,iVMonat);
    if (iOffsetResturlaubJahr = iVJahr) and (iVMonat = 12) then
    begin
      fResturlaub:= fOffsetResturlaub;
    end;
    iaktGLZ:= GetMehrarbeitVorMonat(AMitarbeiter,iVJahr,iVMonat);
    fULgen:= GetFehltagSum(1,1,1,AMitarbeiter,StartOfAMonth(AJahr,AMonat) ,EndOfAMonth(AJahr,AMonat));
    fJahresAnspruch:= GetULAnspruch(AMitarbeiter);
    dm_pcm.qry_Work1.SQL.Text:= 'SELECT SUM(SollstundenI) AS Sollstunden, SUM(ArbeitszeitI) AS Arbeitszeit, SUM(MehrarbeitI) AS Mehrarbeit, SUM(PausenI) AS Pausen,SUM(FeiertagI) AS Feiertag ' +
                                  'FROM time_buchungen ' +
                                  'WHERE MONTH(Datum) = :monat ' +
                                  'and YEAR(Datum) = :jahr ' +
                                  'and ID_Benutzer = :ID ' +
                                  'GROUP BY MONTH(Datum),YEAR(Datum)';
    dm_pcm.qry_Work1.ParamByName('monat').AsInteger:= AMonat;
    dm_pcm.qry_Work1.ParamByName('jahr').AsInteger:= Ajahr;
    dm_pcm.qry_Work1.ParamByName('ID').AsInteger:= AMitarbeiter;
    dm_pcm.qry_Work1.Open;
    iSollzeit:= ReadIntegerField(dm_pcm.qry_Work1.FieldByName('Sollstunden'));
    iIStzeit:= ReadIntegerField(dm_pcm.qry_Work1.FieldByName('Arbeitszeit'));
    iMehrarbeit:= ReadIntegerField(dm_pcm.qry_Work1.FieldByName('Mehrarbeit'));
    iPausen:= ReadIntegerField(dm_pcm.qry_Work1.FieldByName('Pausen'));
    iFeiertag:= ReadIntegerField(dm_pcm.qry_Work1.FieldByName('Feiertag'));
    dm_pcm.qry_Work1.Close;
    iUrlaub_bezahlt:= GetFehltagSum(1,1,1,AMitarbeiter,StartOfAMonth(AJahr,AMonat) ,EndOfAMonth(AJahr,AMonat));
    iUrlaub_unbezahlt:= GetFehltagSum(1,1,0,AMitarbeiter,StartOfAMonth(AJahr,AMonat) ,EndOfAMonth(AJahr,AMonat));
    iKrank_bezahlt:= GetFehltagSum(1,2,1,AMitarbeiter,StartOfAMonth(AJahr,AMonat) ,EndOfAMonth(AJahr,AMonat));
    iKrank_unbezahlt:= GetFehltagSum(1,2,0,AMitarbeiter,StartOfAMonth(AJahr,AMonat) ,EndOfAMonth(AJahr,AMonat));
    dm_pcm.qry_Work1.close;
    if AMonat = 1 then
      fULges:=  fResturlaub - fULgen + fJahresAnspruch
    else
      fULges:=  fResturlaub - fULgen;
    WriteMonatswert(AMitarbeiter,fUlges,iaktGLZ, AMonat,AJahr,iSollzeit,iIStzeit,iMehrarbeit,iPausen,iFeiertag,iUrlaub_bezahlt,iUrlaub_unbezahlt,iKrank_bezahlt,iKrank_unbezahlt);
  end;
end;
procedure BerechneMonate(AMitarbeiter: integer);
var
  qry_Month: TFDQuery;
  iBMonat, iBJahr, iMonthCount, i: Integer;
begin
  qry_Month := TFDQuery.Create(nil);
  try
    qry_Month.Connection := dm_PCM.con_PCM;
    qry_Month.SQL.Text :=
      'SELECT MONTH(Datum) AS Monat, YEAR(Datum) AS Jahr ' +
      'FROM time_buchungen WHERE Abgeschlossen IS NULL AND ID_Benutzer = :ID ' +
      'GROUP BY MONTH(Datum), YEAR(Datum) ' +
      'ORDER BY YEAR(Datum), MONTH(Datum)';
    qry_Month.ParamByName('ID').AsInteger := AMitarbeiter;
    qry_Month.Open;
    qry_Month.FetchAll;
    iMonthCount := qry_Month.RecordCount;
    if iMonthCount = 0 then
      Exit;
    try
      ShowWaitForm(TForm(frm_PCM_Main), PWideChar(rs_Function_Helper_BerechneMonate1), iMonthCount, 417, 65);
      i := 0;
      while not qry_Month.Eof do
      begin
        iBMonat := ReadIntegerField(qry_Month.FieldByName('Monat'));
        iBJahr := ReadIntegerField(qry_Month.FieldByName('Jahr'));
        try
          WaitFormSetText(rs_Function_Helper_BerechneMonatfuerMonat +
            GetMonthName(iBMonat) + rs_Function_Helper_BerechneYearEnd + IntToStr(iBJahr));
          BerechneTage(0, iBMonat, iBJahr, AMitarbeiter);
          BerechneMonat(iBMonat, iBJahr, AMitarbeiter);
        except
          on E: Exception do
          begin
            E.Message := Format('Monatsberechnung %d/%.2d (Mitarbeiter %d): %s',
              [iBJahr, iBMonat, AMitarbeiter, E.Message]);
            raise;
          end;
        end;
        Inc(i);
        WaitFormSetNewCount(iMonthCount);
        WaitFormPosition(i);
        qry_Month.Next;
      end;
    finally
      dm_PCM.qry_Calc.Close;
      CloseWaitForm;
    end;
  finally
    qry_Month.Free;
  end;
end;
procedure StartBooking(AMitarbeiter: integer; ACaption,AMessage,ALocation: String;AStart,AFinish: TDateTime; ACalCol,AFontCol: integer);
begin
  dm_PCM.qry_Work.prepare;
  dm_PCM.qry_Work.SQL.text := 'Insert into time_Kalender (Typ,EventType,Caption,Location,Message,'
                      + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
                      + 'ReminderMinutesBeforeStart,LabelColor,FontColor,ID_Benutzer,Kalendername,CompleteDay) Values '
                      + '(2,:Eventtype,:SUMMARY,:Location,:Message,:DateBegin,:DateEnd,:Options,0,-1,:RecurrenceInfo,:Reminder,'
                      + 'NULL,0,:Color,:FontColor,:ID,:Kalender,:ganzerTag)';
  dm_PCM.qry_Work.ParamByName('Message').asString := 'Test';
  dm_PCM.qry_Work.ParamByName('Eventtype').asInteger := 0;
  dm_PCM.qry_Work.ParamByName('Location').AsString := ALocation;
  dm_PCM.qry_Work.ParamByName('Message').AsString := AMessage;
  dm_PCM.qry_Work.ParamByName('Options').asInteger := 2;
  dm_PCM.qry_Work.ParamByName('Reminder').AsString := 'False';
  dm_PCM.qry_Work.ParamByName('RecurrenceInfo').AsString := '';
  dm_PCM.qry_Work.ParamByName('Kalender').AsString := 'Buchungen';
  dm_PCM.qry_Work.ParamByName('ganzerTag').AsString := 'false';
  dm_PCM.qry_Work.ParamByName('ID').asInteger := AMitarbeiter;
  dm_PCM.qry_Work.ParamByName('SUMMARY').AsString := ACaption;
  dm_PCM.qry_Work.ParamByName('DateBegin').AsDateTime := AStart;
  dm_PCM.qry_Work.ParamByName('DateEnd').AsDateTime := AFinish;
  dm_PCM.qry_Work.ParamByName('Color').asInteger := ACalCol;
  dm_PCM.qry_Work.ParamByName('FontColor').asInteger := AFontCol;
  dm_PCM.qry_Work.ExecSQL;
  dm_PCM.qry_Work.Unprepare;
end;
procedure WriteMonatswert(AMitarbeiter:Integer;ARest: Double;AaktGLZ,AMonat,AJahr,ASollzeit,AIStzeit,AMehrarbeit,APausen,AFeiertag: integer; AUrlaub_bezahlt,AUrlaub_unbezahlt,AKrank_bezahlt,AKrank_unbezahlt: double);
var
  iAnzahl: integer;
begin
  dm_pcm.qry_Calc.SQL.Text:= 'SELECT Count(*) as Anzahl From time_Monatswerte Where Monat = :Monat and Jahr = :Jahr and ID_Benutzer = :ID';
  dm_pcm.qry_Calc.ParamByName('monat').AsInteger:= AMonat;
  dm_pcm.qry_Calc.ParamByName('jahr').AsInteger:= AJahr;
  dm_pcm.qry_Calc.ParamByName('ID').AsInteger:= AMitarbeiter;
  dm_pcm.qry_Calc.open;
  iAnzahl:= ReadIntegerField(dm_pcm.qry_Calc.FieldByName('Anzahl'));
  dm_pcm.qry_Calc.Close;
  if iAnzahl > 0 then
  begin
    dm_pcm.qry_Calc.SQL.Text:= 'Update time_Monatswerte ' +
                                'Set Sollzeit = :Sollzeit, ' +
                                'aktuelleMehrarbeit = :aktuelleMehrarbeit,'+
                                'IStzeit = :IStzeit, ' +
                                'Mehrarbeit = :Mehrarbeit, ' +
                                'Pausen = :Pausen, ' +
                                'Feiertag = :Feiertag, ' +
                                'Urlaub_bezahlt = :Urlaub_bezahlt, ' +
                                'Urlaub_unbezahlt = :Urlaub_unbezahlt, ' +
                                'Krank_bezahlt = :Krank_bezahlt, ' +
                                'Krank_unbezahlt = :Krank_unbezahlt, ' +
                                'Resturlaub = :Resturlaub ' +
                                'Where Monat = :Monat and Jahr = :Jahr and ID_Benutzer = :ID';
    dm_pcm.qry_Calc.ParamByName('aktuelleMehrarbeit').AsInteger:= AaktGLZ + AMehrarbeit;
    dm_pcm.qry_Calc.ParamByName('Sollzeit').AsInteger:= ASollzeit;
    dm_pcm.qry_Calc.ParamByName('IStzeit').AsInteger:= AIStzeit;
    dm_pcm.qry_Calc.ParamByName('Mehrarbeit').AsInteger:= AMehrarbeit;
    dm_pcm.qry_Calc.ParamByName('Pausen').AsInteger:= APausen;
    dm_pcm.qry_Calc.ParamByName('Feiertag').AsInteger:= AFeiertag;
    dm_pcm.qry_Calc.ParamByName('Urlaub_bezahlt').AsFloat:= AUrlaub_bezahlt;
    dm_pcm.qry_Calc.ParamByName('Urlaub_unbezahlt').AsFloat:= AUrlaub_unbezahlt;
    dm_pcm.qry_Calc.ParamByName('Krank_bezahlt').AsFloat:= AKrank_bezahlt;
    dm_pcm.qry_Calc.ParamByName('Krank_unbezahlt').AsFloat:= AKrank_unbezahlt;
    dm_pcm.qry_Calc.ParamByName('Resturlaub').AsFloat:= ARest;
    dm_pcm.qry_Calc.ParamByName('monat').AsInteger:= AMonat;
    dm_pcm.qry_Calc.ParamByName('jahr').AsInteger:= AJahr;
    dm_pcm.qry_Calc.ParamByName('ID').AsInteger:= AMitarbeiter;
    dm_pcm.qry_Calc.ExecSQL;
  end
  else begin
    dm_pcm.qry_Calc.SQL.Text:= 'Insert into time_Monatswerte ' +
                                '(aktuelleMehrarbeit,Resturlaub,Sollzeit,IStzeit,Mehrarbeit,Pausen,Feiertag,Urlaub_bezahlt,Urlaub_unbezahlt,Krank_bezahlt,Krank_unbezahlt,Monat,Jahr,ID_Benutzer) Values ' +
                                '(:aktuelleMehrarbeit,:Resturlaub,:Sollzeit,:IStzeit,:Mehrarbeit,:Pausen,:Feiertag,:Urlaub_bezahlt,:Urlaub_unbezahlt,:Krank_bezahlt,:Krank_unbezahlt,:Monat,:Jahr,:ID)';
    dm_pcm.qry_Calc.ParamByName('aktuelleMehrarbeit').AsInteger:= AaktGLZ + AMehrarbeit;
    dm_pcm.qry_Calc.ParamByName('Resturlaub').AsFloat:= ARest;
    dm_pcm.qry_Calc.ParamByName('Sollzeit').AsInteger:= ASollzeit;
    dm_pcm.qry_Calc.ParamByName('IStzeit').AsInteger:= AIStzeit;
    dm_pcm.qry_Calc.ParamByName('Mehrarbeit').AsInteger:= AMehrarbeit;
    dm_pcm.qry_Calc.ParamByName('Pausen').AsInteger:= APausen;
    dm_pcm.qry_Calc.ParamByName('Feiertag').AsInteger:= AFeiertag;
    dm_pcm.qry_Calc.ParamByName('Urlaub_bezahlt').AsFloat:= AUrlaub_bezahlt;
    dm_pcm.qry_Calc.ParamByName('Urlaub_unbezahlt').AsFloat:= AUrlaub_unbezahlt;
    dm_pcm.qry_Calc.ParamByName('Krank_bezahlt').AsFloat:= AKrank_bezahlt;
    dm_pcm.qry_Calc.ParamByName('Krank_unbezahlt').AsFloat:= AKrank_unbezahlt;
    dm_pcm.qry_Calc.ParamByName('monat').AsInteger:= AMonat;
    dm_pcm.qry_Calc.ParamByName('jahr').AsInteger:= AJahr;
    dm_pcm.qry_Calc.ParamByName('ID').AsInteger:= AMitarbeiter;
    dm_pcm.qry_Calc.ExecSQL;
  end;
end;
{$EndRegion Procedures}
end.
