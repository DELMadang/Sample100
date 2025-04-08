program ch071;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  system.Math;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var originalNum := num;
    var numString := num.ToString();
    var sum := 0;
    for var i := 1 to numString.Length do
      sum := sum + Round(Power(StrToInt(numString[i]), i));

    if (sum = originalNum) then
      WriteLn(originalNum, ' is Disarium Number')
    else
      WriteLn(originalNum, ' is Not a Disarium Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
