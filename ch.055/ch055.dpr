program ch055;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function Power(x, y: Integer): Integer;
begin
  if (y = 0) then
    Result := 1
  else
    Result := x * Power(x, y - 1);
end;

begin
  try
    Write('Base값를 입력하세요: ');
    var basenum: Integer;
    ReadLn(basenum);

    Write('지수값를 입력하세요: ');
    var exponent: Integer;
    ReadLn(exponent);

    WriteLn('Result: ', Power(basenum, exponent));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
