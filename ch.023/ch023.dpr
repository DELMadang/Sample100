program ch023;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('���ڸ� �Է��ϼ���: ');
    var rows: Integer;
    ReadLn(rows);

    for var i := 1 to rows do
    begin
      for var j := 1 to 2 * i - 1 do
        Write('*');
      WriteLn;
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
