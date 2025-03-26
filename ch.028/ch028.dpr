program ch028;

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

    var numString := num.ToString();
    var sum := 0;
    for var i := 1 to Length(numString) do
    begin
      sum := sum + Round(System.Math.Power(StrToInt(numString[i]), i));
    end;

    WriteLn('num: ' , num, ' sum: ', sum);
    if (sum = num) then
      WriteLn('Disarium Number')
    else
      WriteLn('Not a Disarium Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
