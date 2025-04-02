program ch049;

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
    var product := 1;

    while (num > 0) do
    begin
      var digit := num mod 10;
      sum := sum + digit;
      product := product * digit;
      num := num div 10;
    end;

    if (sum = product) then
      WriteLn(originalNum, ' is Spy Number')
    else
      WriteLn(originalNum, ' is Not a Spy Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
