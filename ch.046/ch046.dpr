program ch046;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('Çà °¹¼ö: ');
    var rows: Integer;
    ReadLn(rows);

    Write('¿­ °¹¼ö: ');
    var cols: Integer;
    ReadLn(cols);

    for var i := 1 to rows do
    begin
      for var j := 1 to cols do
      begin
        if (i = 1) or (i = rows) or (j = 1) or (j = cols) then
          Write('*')
        else
          Write(' ');
      end;
      WriteLn('');
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
