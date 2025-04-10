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
    Write('BASE 숫자를 입력하세요: ');
    var base: Integer;
    ReadLn(base);

    Write('EXPONENT 숫자를 입력하세요: ');
    var exponent: Integer;
    ReadLn(exponent);

    WriteLn('Result: ', Power(base, exponent));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
