program ch047;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function SquareSumOfDigits(num: Integer): Integer;
begin
  var sum := 0;
  while (num > 0) do
  begin
    var digit := num mod 10;
    sum := sum + (digit * digit);
    num := num div 10;
  end;

  Result := sum;
end;

function IsHappyNumber(num: Integer): Boolean;
begin
  while (num <> 1) and (num <> 4) do
    num := SquareSumOfDigits(num);

  Result := (num = 1);
end;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    if IsHappyNumber(num) then
      WriteLn(num, ' is Happy Number')
    else
      WriteLn(num, ' is Not a Happy Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
