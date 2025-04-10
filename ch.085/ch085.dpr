program ch085;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function Power(x, y: Integer): Integer;
begin
  Result := 1;
  for var i := 1 to y do
    Result := Result * x;
end;

begin
  try
    Write('BASE ���ڸ� �Է��ϼ���: ');
    var base: Integer;
    ReadLn(base);

    Write('EXPONENT ���ڸ� �Է��ϼ���: ');
    var exponent: Integer;
    ReadLn(exponent);

    WriteLn('Result: ', Power(base, exponent));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
