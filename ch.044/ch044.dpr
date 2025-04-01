program ch044;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var originalNum := num;
    var sum := 0;
    while (num > 0) do
    begin
      sum := sum + (num mod 10);
      num := num div 10;
    end;

    if (originalNum mod sum = 0) then
      WriteLn(originalNum, ' is Niven Number')
    else
      WriteLn(originalNum, ' is Not a Niven Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
