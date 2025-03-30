program ch038;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  system.Math;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var isPronic := false;
    for var i := 0 to Round(Sqrt(num)) do
    begin
      if (i * (i + 1) = num) then
      begin
        isPronic := True;
        Break;
      end;
    end;

    if (isPronic) then
      WriteLn(num, ' is Pronic Number')
    else
      WriteLn(num, ' is not a Pronic Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
