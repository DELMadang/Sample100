program ch026;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('숫자를 입력하세요: ');
    var rows: Integer;
    ReadLn(rows);

    for var i := 0 to rows do
    begin
      var number := 1;

      Write(string.Create(' ', rows - i));
      for var j := 0 to i do
      begin
        Write(number, ' ');
        number := number * (i - j) div (j + 1);
      end;

      WriteLn;
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
