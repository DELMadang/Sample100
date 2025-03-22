program ch020;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('ASCII Table: ');
    var count := 0;
    for var i := 0 to 255 do
    begin
      if (i < 32) or (i > 127)then
        WriteLn(i, ' is Non-Printable $', IntToHex(i, 2))
      else
        WriteLn(i, ' is Printable ', Char(i), ' ');

      Inc(count);
      if count > 16 then
      begin
        count := 0;
        WriteLn;
      end;
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
