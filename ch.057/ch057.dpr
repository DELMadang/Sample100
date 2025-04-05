program ch057;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function FindGCD(a, b: Integer): Integer;
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
  Result := (a * b) div FindGCD(a, b);
end;

begin
  try
    Write('ù���� ���ڸ� �Է��ϼ���: ');
    var num1: Integer;
    ReadLn(num1);

    Write('�ι�° ���ڸ� �Է��ϼ���: ');
    var num2: Integer;
    ReadLn(num2);

    WriteLn('GCD: ', FindGCD(num1, num2));
    WriteLn('LCM: ', FindLCM(num1, num2));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
