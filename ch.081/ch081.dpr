program ch081;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var flag := 0;
    for var i := 0 to num-1 do
    begin
      if (i * (i + 1) = num) then
      begin
        flag := 1;
        break;
      end;
    end;

    if (flag = 1) then
      WriteLn(num, ' is Pronic Number')
    else
      WriteLn(num, ' is Not a Pronic Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
