unit PCM.Time.Strings;

interface

uses
  {$Region uses}
  Classes,
  SysUtils,
  Windows;
  {$EndRegion uses}
// allgemein
resourcestring
  rs_Backup_CAP_ChooseModul = 'Bitte Modul wählen';
  rs_Function_Helper_BerechneTag ='Berechne Tag: ';
  rs_Function_Helper_BerechneYearEnd = ', Jahr:';
  rs_Function_Helper_BerechneMonat = 'Berechne Monat: ';
  rs_Function_Helper_BerechneMonat1 = 'Berechne Monat';
  rs_Function_Helper_BerechneMonate1 = 'Berechne Monate';
  rs_Function_Helper_BerechneTag1 = 'Berechne Tag';
  rs_Function_Helper_BerechneMonate = 'Berechne Monate';
  rs_Function_Helper_BerechneJahr = 'Berechne Jahr: ';
  rs_Function_Helper_BerechneJahr1 = 'Berechne Jahr';
  rs_Function_Helper_Berechne = 'Berechne ';
  rs_Function_Helper_BerechneMonatfuerMonat = 'Berechne Monate für Monat: ';
  rs_Function_Helper_Datenwerdenerstellt = 'Daten werden erstellt';
  rs_general_BTN_Ok = '&Ok';
  rs_general_BTN_Cancel = '&Abbrechen';
  rs_general_BTN_Yes = '&Ja';
  rs_general_BTN_No = '&Nein';
  rs_PCMTime_Reports = 'Reports';
  rs_PCMTime_Firma = 'Firma';
  rs_PCMTime_Abteilungen = 'Abteilungen';
  rs_PCMTime_Zeitplan = 'Zeitpläne';
  rs_general_Save = 'Speichern';
  rs_general_Bezeichnung = 'Bezeichnung:';
  rs_general_Suche = 'Suche';
  rs_General_Formload = 'Formular wird geladen';  // neue Unit
  rs_General_Ende = 'Das Programm wird beendet.';
  rs_PCM_Monat = 'Monat';
  rs_PCM_Bezeichnung = 'Bezeichnung';
  rs_PCM_Tag = 'Tag';
  rs_PCM_ChooseModul = 'Bitte Modul wählen'; // neue Unit
  rs_PCM_Modulliste_verstecken = 'Modulliste verstecken';
  rs_PCM_Modulliste_anzeigen = 'Modulliste anzeigen';
  rs_PCM_Benutzerverwaltung ='Benutzerverwaltung';  // neue Unit
  rs_PCM_Konfiguration = 'Konfiguration'; // neue Unit
  rs_PCM_Design = 'Design'; // neue Unit
  rs_PCM_Archiv = 'Archiv'; // neue Unit
  rs_PCM_Systeminformation = 'Systeminformation'; // neue Unit
  rs_PCM_Programminfo = 'Programminfo'; // neue Unit
  rs_PCM_Handbuch = 'Handbuch';                      // neue Unit
  rs_PCM_Start = 'Programm gestartet'; // neue Unit
  rs_PCM_Beenden = 'Programm beendet'; // neue Unit
  rs_PCMManager_DatumUngueltig = 'Datum ungültig. ';
  rs_PCMManager_DatumVonBis = 'Bitte geben Sie ein "Von"- und ein "Bis"-Datum an.';
  rs_PCMManager_DatumBisVon ='Das Beginn-Datum muss vor dem Ende-Datum liegen.';
	rs_PCMManager_Feiertageintragen = 'Feiertag eintragen';
  rs_PCMManager_GridExport1 = 'Daten wurden in ';
  rs_PCMManager_GridExport2 = ' exportiert';
  rs_PCMManager_Monatwaehlen = 'Bitte Monat wählen.';
  rs_PCMManager_Jahrwaehlen = 'Bitte Jahr wählen.';
  rs_PCMManager_Bundeslandwaehlen = 'Bitte wählen Sie ain Bundesland aus.';
  rs_PCMManager_Undefiniert = 'Undefiniert';
  rs_PCMManager_Konfession = 'Konfession';
  rs_PCMManager_Vorname = 'Bitte Vorname eingeben!';
  rs_PCMManager_nachname = 'Bitte Nachname eingeben!';
  rs_PCMManager_Staatsangehoerigkeit = 'Staatsangehörigkeit';
  rs_PCMManager_Konfessionbearbeiten =  'Konfession bearbeiten';
  rs_PCMManager_Staatsangehoerigkeitbearbeiten = 'Staatsangehörigkeit bearbeiten';
  rs_PCMManager_KalenderTag = 'Terminkalender - Tagesansicht';
  rs_PCMManager_KalenderWoche = 'Terminkalender - Wochenansicht';
  rs_PCMManager_KalenderMonat = 'Terminkalender - Monatsansicht';
  rs_PCMManager_Kalenderjahr = 'Terminkalender - Jahresansicht';
  rs_PCMManager_Kalenderagenda = 'Terminkalender - Agendaansicht';
  rs_PCMManager_ArbWocheZurueck = 'Eine Arbeitswoche zurück springen';
  rs_PCMManager_ArbWocheVor = 'Eine Arbeitswoche vor springen';
  rs_PCMManager_JahrZurueck = 'Ein Jahr zurück springen';
  rs_PCMManager_JahrVor = 'Ein Jahr vor springen';
  rs_PCMManager_MonatZurueck = 'Einen Monat zurück springen';
  rs_PCMManager_MonatVor = 'Einen Monat vor springen';
  rs_PCMManager_TagZurueck = 'Einen Tag zurück springen';
  rs_PCMManager_TagVor = 'Einen Tag vor springen';
  rs_PCMManager_WocheZurueck = 'Eine Woche zurück springen';
  rs_PCMManager_WocheVor = 'Eine Woche vor springen';
  rs_PCMTime_MSGDataNotSaved = 'Datensatz wurde noch nicht gespeichert. Wollen sie die Buchungsmaske verlassen?';
  rs_PCMTime_Overyear = 'Fehltage können nicht jahresübergreifend eingetragen werden!';
  rs_PCMTime_Zeitraumgroesser = 'Zeitraum-Von kann ich größer als Zeitraum-Bis sein!';
  rs_PCMTime_Fehltagexists = 'Im ausgewählten Zeitraum gibt es schon eingetragene Fehltage!';
  rs_PCMTime_FehltaNone = 'Es wurde kein Fehltag ausgewählt!';
  rs_PCMTime_FeiertagforYear = 'Bitte erst Feiertage für das Jahr ';
  rs_PCMTime_FeiertagforYear1 =  ' eintragen ';
  rs_PCMTime_LastBookingKommen = 'Letzte Buchung: Kommen am ';
  rs_PCMTime_LastBooking1PauseBeginn = 'Letzte Buchung: 1. Pause Beginn am ';
  rs_PCMTime_LastBooking2PauseBeginn = 'Letzte Buchung: 2. Pause Beginn am ';
  rs_PCMTime_LastBooking1PauseEnd = 'Letzte Buchung: 1. Pause Ende am ';
  rs_PCMTime_LastBooking2PauseEnd = 'Letzte Buchung: 2. Pause Ende am ';
  rs_PCMTime_LastBookingGehen = 'Letzte Buchung: Gehen am ';
  rs_PCMTime_CurrentDatetime = 'Aktuelles Datum / Uhrzeit: ';
  rs_PCMTime_Mitarbeiter = 'Mitarbeiter';
  rs_PCMTime_Zeiterfassung = 'Zeiterfassung';
  rs_PCMTime_StatistikUL = 'Statistik: Urlaubsanspruch für Jahr ';
  rs_PCMTime_StatistikULDays = ' Tage';
  rs_PCMTime_Auswertung = 'Auswertung von ';
type
  {$Region type}
  TResourceStringID = Pointer;

  TResOriginalStrings = class(TStringList)
  public
    constructor Create;
  end;
  {$EndRegion type}
var
  {$Region var}
  FResOriginalStrings: TResOriginalStrings = nil;
  FResStrings: TStringList = nil;
  FUseResCache: Boolean = true;
  {$EndRegion var}
Const
  {$Region const}
  SetNone = 0;
  SetRead = 1;
  SetReadWrite = 2;
  SetComplete = 3;
  {$EndRegion const}
// Deklarationen
{$Region Deklarationen}
procedure initNewLanguage(locale: LCID);
procedure CreateResStringLists;
procedure DestroyResStringLists;
procedure ClearResourceStrings;
function GetResourceString(AResString: TResourceStringID): string;
{$EndRegion Deklarationen}
implementation
// Deklarationen
{$Region Prozeduren}
constructor TResOriginalStrings.Create;
begin
  inherited Create;
  CaseSensitive := True;
end;
procedure ClearResourceStrings;
begin
  if FResStrings <> nil then
    FResStrings.Clear;
  if FResOriginalStrings <> nil then
    FResOriginalStrings.Clear;
end;
procedure CreateResStringLists;
begin
  FResOriginalStrings := TResOriginalStrings.Create;
  FResStrings := TStringList.Create;
end;
procedure DestroyResStringLists;
begin
  FreeAndNil(FResOriginalStrings);
  FreeAndNil(FResStrings);
end;
function GetResOriginalStringIndex(AResString: TResourceStringID): Integer;
begin
  Result := FResOriginalStrings.IndexOfObject(TObject(AResString));
end;
procedure SetResourceString(AResString: TResourceStringID; const Value: string);
var
  AIndex: Integer;
begin
  AIndex := GetResOriginalStringIndex(AResString);
  if AIndex <> -1 then
    FResStrings[AIndex] := Value
  else
  begin
    FResOriginalStrings.AddObject(LoadResString(AResString), TObject(AResString));
    FResStrings.Add(Value);
  end;
end;
function GetResourceString(AResString: TResourceStringID): string;
var
  AIndex: Integer;
begin
  if FUseResCache then
  begin
    AIndex := GetResOriginalStringIndex(AResString);
    if AIndex <> -1 then
    begin
      Result := FResStrings[AIndex]
    end
    else
    begin
      Result := LoadResString(AResString);
      SetResourceString(AResString, Result);
    end;
  end
  else
    Result := LoadResString(AResString);
end;
procedure initNewLanguage(locale: LCID);
begin
  ClearResourceStrings;
end;
{$EndRegion Prozeduren}
initialization
  CreateResStringLists;
finalization
  DestroyResStringLists;
end.
