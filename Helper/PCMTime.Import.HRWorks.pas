unit PCMTime.Import.HRWorks;

interface

uses System.SysUtils;

type
  THRWorksDay = record
    Datum: TDateTime;
    Kommen, Gehen, Pause1Beginn, Pause1Ende, Pause2Beginn, Pause2Ende: Integer;
    Soll, Netto, Pause: Integer;
    Hinweis: string;
  end;
  THRWorksDays = TArray<THRWorksDay>;

function ParseHRWorks(const AText: string): THRWorksDays;
function ImportTime(AMinutes: Integer): string;

implementation

uses System.StrUtils, System.RegularExpressions, System.Generics.Collections;

function ImportTime(AMinutes: Integer): string;
begin
  Result := Format('%.2d:%.2d', [AMinutes div 60, AMinutes mod 60]);
end;

function ReadMinutes(const S: string): Integer;
var Parts: TArray<string>; H, M: Integer;
begin
  Parts := S.Split([':']);
  if (Length(Parts) <> 2) or not TryStrToInt(Parts[0], H) or
    not TryStrToInt(Parts[1], M) or (M < 0) or (M > 59) then
    raise EConvertError.Create('Ungueltige Zeit in der PDF: ' + S);
  Result := Abs(H) * 60 + M;
  if S.StartsWith('-') then Result := -Result;
end;

function ParseHRWorks(const AText: string): THRWorksDays;
var
  Dates, Blocks, Totals: TMatchCollection;
  SourceTotal: TMatch;
  Seg, BeforeTotal: string;
  Day: THRWorksDay;
  I, J, StopAt, SummaryAt, StartAt, A, B, Duration, LastEnd, NetTotal: Integer;
  Seen: TDictionary<Integer, Boolean>;
begin
  if not ContainsText(AText, 'HRworks') or
    not ContainsText(AText, 'Arbeitszeiten') then
    raise EConvertError.Create('Bitte eine HRworks-Arbeitszeiten-Kurzuebersicht waehlen.');
  Dates := TRegEx.Matches(AText,
    '\b(?:Mo|Di|Mi|Do|Fr|Sa|So),\s*(\d{2})\.(\d{2})\.(\d{2})\b');
  if Dates.Count = 0 then
    raise EConvertError.Create('Keine Tagesbuchungen erkannt. Gescannte PDFs werden nicht unterstuetzt.');
  SetLength(Result, Dates.Count);
  NetTotal := 0;
  Seen := TDictionary<Integer, Boolean>.Create;
  try
    for I := 0 to Dates.Count - 1 do
    begin
      Day := Default(THRWorksDay);
      Day.Datum := EncodeDate(2000 + StrToInt(Dates[I].Groups[3].Value),
        StrToInt(Dates[I].Groups[2].Value), StrToInt(Dates[I].Groups[1].Value));
      if Seen.ContainsKey(Trunc(Day.Datum)) then
        raise EConvertError.Create('Datum mehrfach enthalten: ' + DateToStr(Day.Datum));
      Seen.Add(Trunc(Day.Datum), True);
      StartAt := Dates[I].Index + Dates[I].Length;
      StopAt := Length(AText);
      if I + 1 < Dates.Count then StopAt := Dates[I+1].Index;
      Seg := Copy(AText, StartAt + 1, StopAt - StartAt);
      SummaryAt := Pos('Tagessumme', Seg);
      if SummaryAt = 0 then
        raise EConvertError.Create('Tagessumme fehlt: ' + DateToStr(Day.Datum));
      BeforeTotal := Copy(Seg, 1, SummaryAt - 1);
      Blocks := TRegEx.Matches(BeforeTotal,
        '(?<![\d:])(\d{1,2}:\d{2})\s+(\d{1,2}:\d{2})\s+(\d{1,3}:\d{2})(?!\d)');
      Totals := TRegEx.Matches(Copy(Seg, SummaryAt + Length('Tagessumme'), MaxInt),
        '(?<![\d:])-?\d{1,3}:\d{2}(?!\d)');
      if (Blocks.Count < 1) or (Blocks.Count > 3) or (Totals.Count < 11) then
        raise EConvertError.Create('Tagesformat nicht unterstuetzt: ' + DateToStr(Day.Datum));
      LastEnd := 0;
      for J := 0 to Blocks.Count - 1 do
      begin
        A := ReadMinutes(Blocks[J].Groups[1].Value);
        B := ReadMinutes(Blocks[J].Groups[2].Value);
        Duration := ReadMinutes(Blocks[J].Groups[3].Value);
        if (A < 0) or (B > 1439) or (B <= A) or (B - A <> Duration) or
          ((J > 0) and (A < LastEnd)) then
          raise EConvertError.Create('Widerspruechliche Arbeitszeiten: ' + DateToStr(Day.Datum));
        if J = 0 then Day.Kommen := A;
        if J = 1 then begin Day.Pause1Beginn := LastEnd; Day.Pause1Ende := A; end;
        if J = 2 then begin Day.Pause2Beginn := LastEnd; Day.Pause2Ende := A; end;
        if J > 0 then Inc(Day.Pause, A - LastEnd);
        Inc(Day.Netto, Duration);
        LastEnd := B;
      end;
      Day.Gehen := LastEnd;
      Day.Soll := ReadMinutes(Totals[6].Value);
      if (Day.Soll < 0) or (Day.Soll > 1439) or
        (Day.Netto <> ReadMinutes(Totals[0].Value))

//        (Day.Netto <> ReadMinutes(Totals[4].Value)) or
//        (Day.Netto - Day.Soll <> ReadMinutes(Totals[7].Value))
      then
        raise EConvertError.Create('Tagessumme passt nicht zu den Zeiten: ' + DateToStr(Day.Datum));
//      if Day.Pause <> ReadMinutes(Totals[1].Value) then
//        Day.Hinweis := 'Pausensumme ohne passende Beginn-/Endzeiten; bitte manuell pruefen';
      for J in [2, 3, 5, 8, 9, 10] do
        if ReadMinutes(Totals[J].Value) <> 0 then
          Day.Hinweis := 'Zeitkorrektur oder Abwesenheit enthalten; bitte manuell pruefen';
      Result[I] := Day;
      Inc(NetTotal, Day.Netto);
    end;
    SourceTotal := TRegEx.Match(AText, 'Erfasste\s+Stunden\s+(\d{1,5}:\d{2})');
    if not SourceTotal.Success or (ReadMinutes(SourceTotal.Groups[1].Value) <> NetTotal) then
      raise EConvertError.Create('PDF-Gesamtsumme stimmt nicht mit den erkannten Tagen ueberein.');
  finally
    Seen.Free;
  end;
end;

end.
