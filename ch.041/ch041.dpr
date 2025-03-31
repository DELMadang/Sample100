program ch041;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function Factorial(num: Integer): Integer;
begin
  if (num = 0) or (num = 1) then
    Result := 1
  else
    Result := num * Factorial(num - 1);
end;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var originalNum := num;
    var sum := 0;

    while (num > 0) do
    begin
      var digit := num mod 10;

      sum := sum + Factorial(digit);
      num := num div 10;
    end;

    if (sum = originalNum) then
      WriteLn(originalNum, ' is Krishnamurthy Number')
    else
      WriteLn(originalNum, ' is Not a Krishnamurthy Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
