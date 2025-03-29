program ch032;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function FindHCF(a, b: Integer): Integer;
begin
  while (b <> 0) do
  begin
    var temp := b;
    b := a mod b;
    a := temp;
 end;

 Result := a;
end;

function FindLCM(a, b: Integer): Integer;
begin
  Result := (a * b) div FindHCF(a, b);
end;

begin
  try
    Write('두 숫자를 입력하세요: ');
    var num1, num2: Integer;
    ReadLn(num1, num2);

    WriteLn('HCF: ', FindHCF(num1, num2));
    WriteLn('LCM: ', FindLCM(num1, num2));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
