program ch036;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var sum := 0;
    for var i := 1 to (num div 2) do
      if (num mod i = 0) then
        sum := sum + i;

    if (sum > num) then
      WriteLn(num, ' is Abundant Number')
    else
      WriteLn(num, ' is Not an Abundant Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
