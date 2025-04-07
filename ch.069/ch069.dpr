program ch069;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Math;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var originalNum := num;
    var sum := 0;
    var digits := Length(num.ToString);
    while (num > 0) do
    begin
      var digit := num mod 10;
      sum := sum + Round(Power(digit, digits));
      num := num div 10;
    end;

    if (sum = originalNum) then
      WriteLn(originalNum, ' is Armstrong Number')
    else
      WriteLn(originalNum, ' is Not an Armstrong Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
