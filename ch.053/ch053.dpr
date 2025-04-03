program ch053;

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
      begin
        Write(' ');
      end;

      for var k := 1 to 2 * i - 1 do
      begin
        if (k = 1) or (k = 2 * i - 1) then
          Write('*')
        else
          Write(' ');
      end;

      WriteLn;
    end;

    for var i := rows - 1 downto 1 do
    begin
      for var j := 1 to rows - i do
      begin
        Write(' ');
      end;

      for var k := 1 to 2 * i - 1 do
      begin
        if (k = 1) or (k = 2 * i - 1) then
          Write('*')
        else
          Write(' ');
      end;

      WriteLn;
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
