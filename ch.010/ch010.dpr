program ch010;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    var Numbers := [1, 6, 10, 7, 8];
    var MaxNumber := Numbers[0];
    var MinNumber := Numbers[0];

    for var i := Low(Numbers) to High(Numbers) do
    begin
      if (Numbers[i] < MinNumber) then
        MinNumber := Numbers[i];

      if (Numbers[i] > MaxNumber) then
        MaxNumber := Numbers[i];
    end;

    WriteLn('최소값: ', MinNumber);
    WriteLn('최대값: ', MaxNumber);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
