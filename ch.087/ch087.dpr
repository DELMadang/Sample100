program ch087;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Math;

function IsPrime(num: Integer): Boolean;
begin
  if (num = 1) or (num = 0) then
    Result := false;

  Result := True;
  for var i := 2 to Round(Sqrt(num)) do
  begin
    if (num mod i = 0) then
      Result := false;
  end;
end;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var reverse := 0;
    var temp := num;
    while (temp <> 0) do
    begin
      var digit := temp mod 10;
      reverse := reverse * 10 + digit;
      temp := temp div 10;
    end;

    if (IsPrime(num) and IsPrime(reverse) and (num <> reverse)) then
      WriteLn(num, ' is Emirp Number')
    else
      WriteLn(num, ' is Not an Emirp Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
