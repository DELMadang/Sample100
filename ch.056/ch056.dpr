program ch056;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function GetSumOfDivisors(num: Integer): Integer;
begin
  var sum := 0;
  for var i := 1 to num div 2 do
  begin
    if (num mod i = 0) then
      sum := sum + i;
  end;

  Result := sum;
end;

begin
  try
    Write('첫번재 숫자를 입력하세요: ');
    var num1: Integer;
    ReadLn(num1);

    Write('두번째 숫자를 입력하세요: ');
    var num2: Integer;
    ReadLn(num2);

    var sum1 := GetSumOfDivisors(num1);
    var sum2 := GetSumOfDivisors(num2);

    if (sum1 = num2) and (sum2 = num1) then
      WriteLn(num1, ', ', num2, ' is Amicable Numbers')
    else
      WriteLn(num1, ', ', num2, 'is Not Amicable Numbers');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
