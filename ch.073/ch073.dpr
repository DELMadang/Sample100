program ch073;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('숫자를 입력하세요: ');
    var rows: Integer;
    ReadLn(rows);

    for var i := 1 to rows do
    begin
      for var j := 1 to rows - i do
        Write(' ');

      for var k := 1 to i do
        Write('*');

      WriteLn;
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
