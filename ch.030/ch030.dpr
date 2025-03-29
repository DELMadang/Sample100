program ch030;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('반경을 입력하세요: ');
    var radius: double;
    ReadLn(radius);

    var circumference := 2 * PI * radius;
    var area := PI * radius * radius;

    WriteLn('둘레: ', circumference);
    WriteLn('면적: ', area);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
