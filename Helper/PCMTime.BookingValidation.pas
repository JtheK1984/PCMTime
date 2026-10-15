unit PCMTime.BookingValidation;

interface

type
  TBookingChecks = record
    MeldungenErzeugen, Pausenpruefung, LogischeBuchungen,
      BeginnEndeFehler, MaximalArbeitszeit: Boolean;
  end;
  TBookingDay = record
    // Minutes since midnight; -1 denotes a missing booking.
    Kommen, Gehen, Pause1Beginn, Pause1Ende, Pause2Beginn, Pause2Ende: Integer;
    ExpectedWork: Boolean;
  end;

function ValidateBooking(const Day: TBookingDay; const Checks: TBookingChecks): string;

implementation

uses System.SysUtils;

function ValidateBooking(const Day: TBookingDay; const Checks: TBookingChecks): string;
var
  Valid: Boolean;
  PauseSum, LegalPauseSum, NetMinutes, RequiredPause, LastEnd: Integer;
  HasBooking: Boolean;
  procedure Add(const S: string);
  begin
    if Result <> '' then Result := Result + sLineBreak;
    Result := Result + S;
  end;
  procedure CheckPause(B, E: Integer; const Name: string);
  begin
    if (B < 0) and (E < 0) then Exit;
    if (B < 0) or (E < 0) then
    begin
      Valid := False;
      if Checks.BeginnEndeFehler then
        if B < 0 then Add(Name + ': Beginn fehlt.')
        else Add(Name + ': Ende fehlt.');
      Exit;
    end;
    if (E <= B) or (B < Day.Kommen) or (E > Day.Gehen) or (B < LastEnd) then
    begin
      Valid := False;
      if Checks.LogischeBuchungen then
      begin
        if E = B then Add(Name + ': Pausensumme ist 0 trotz gebuchter Pause.')
        else Add(Name + ': unlogische oder ueberlappende Buchungszeiten.');
      end;
    end;
    if E > B then
    begin
      Inc(PauseSum, E - B);
      if E - B >= 15 then Inc(LegalPauseSum, E - B);
    end;
    LastEnd := E;
  end;
begin
  Result := '';
  if not Checks.MeldungenErzeugen then Exit;
  HasBooking := (Day.Kommen >= 0) or (Day.Gehen >= 0) or
    (Day.Pause1Beginn >= 0) or (Day.Pause1Ende >= 0) or
    (Day.Pause2Beginn >= 0) or (Day.Pause2Ende >= 0);
  if not HasBooking and not Day.ExpectedWork then Exit;
  Valid := (Day.Kommen >= 0) and (Day.Gehen >= 0);
  if Checks.BeginnEndeFehler then
  begin
    if Day.Kommen < 0 then Add('Kommen-Buchung fehlt.');
    if Day.Gehen < 0 then Add('Gehen-Buchung fehlt.');
  end;
  if Valid and (Day.Kommen > Day.Gehen) then
  begin
    Valid := False;
    if Checks.LogischeBuchungen then Add('Kommen liegt nach Gehen.');
  end;
  PauseSum := 0;
  LegalPauseSum := 0;
  LastEnd := Day.Kommen;
  CheckPause(Day.Pause1Beginn, Day.Pause1Ende, 'Pause 1');
  CheckPause(Day.Pause2Beginn, Day.Pause2Ende, 'Pause 2');
  // Duration checks need complete, chronologically valid bookings.
  if not Valid then Exit;
  NetMinutes := Day.Gehen - Day.Kommen - PauseSum;
  if Checks.Pausenpruefung then
  begin
    RequiredPause := 0;
    if NetMinutes > 360 then RequiredPause := 30;
    if NetMinutes > 540 then RequiredPause := 45;
    if LegalPauseSum < RequiredPause then
      Add(Format('Pausenpruefung: %d Minuten Pause erforderlich, %d Minuten anrechenbar gebucht.',
        [RequiredPause, LegalPauseSum]));
  end;
  if Checks.MaximalArbeitszeit and (NetMinutes > 600) then
    Add('Maximale Arbeitszeit von 10 Stunden netto ueberschritten.');
end;

end.
