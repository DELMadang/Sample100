program ch035;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Math;

function IsPrime(num: Integer): Boolean;
begin
  if (num <= 1) then
    Exit(False);

  for var i := 2 to Round(Sqrt(num)) do
    if (num mod i = 0) then
      Exit(False);

  Result := True;
end;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    WriteLn('First ', num, ' prime numbers are: ');
    var count := 0;
    var number := 2;
    while (count < num) do
    begin
      if IsPrime(number) then
      begin
        Write(number, ' ');
        Inc(count);
      end;
      Inc(number);
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
