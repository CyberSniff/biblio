unit DateTimeMethods;
interface
function IsLeapYear(year: integer): boolean;
function DaysInMonth(month, year: integer): integer;
function LaterInDay(p1, p2: DateTime): DateTime;
function LaterInYear(p1, p2: DateTime): DateTime := p1;
function DaysInYear(year: integer): integer := 0;
function DaysInYearRange(year1, year2: integer): integer := 0;
function SecondsInHours(hours: integer): integer := 0;
implementation
function IsLeapYear(year: integer): boolean;
begin
 if year mod 4 = 0 then 
   IsLeapYear:=true;
end;
function DaysInMonth(month, day: integer): integer;
begin
  case month of
    2: day:=28;
    5, 7, 9, 11: day:=30;
    1, 3, 4, 6, 8, 10, 12: day:=31; 
  end;
  function LaterInDay(p1, p2: DateTime): DateTime;
  begin
    if p1.Hour >p2.Hour then result:=p1;
    if p1.Hour<p2.Hour then result:=p1;
  end;
end.
