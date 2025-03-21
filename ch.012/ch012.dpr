program ch012;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    var Numbers := [1, 6, 10, 7, 8];

    WriteLn('배열의 값: ');
    for var i := High(Numbers) downto Low(Numbers) do
    begin
      Write(Numbers[i], ' ');
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
