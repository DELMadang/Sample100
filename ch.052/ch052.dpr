program ch052;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('시작값을 입력하세요: ');
    var num1: Integer;
    ReadLn(num1);

    Write('종료값을 입력하세요: ');
    var num2: Integer;
    ReadLn(num2);

    for var i := num1 to num2 do
    begin
      var num := i;
      var originalNum := num;
      var sum := 0;
      while (num > 0) do
      begin
        sum := sum + (num mod 10);
        num := num div 10;
      end;

      if (originalNum mod sum = 0) then
      begin
        WriteLn(originalNum, ' is a Harshad Number');
      end;
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
