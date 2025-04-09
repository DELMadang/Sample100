program ch078;

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

    var sum := 0;
    var square := num * num;

    while (square <> 0) do
    begin
      sum := sum + (square mod 10);
      square := square div 10;
    end;

    if (sum = num) then
      WriteLn(num, ' is Neon Number')
    else
      WriteLn(num, ' is Not a Neon Number');


    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
