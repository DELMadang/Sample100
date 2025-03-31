program ch042;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Math;

begin
  try
    var num_start, num_end: Integer;
    Write('시작 값을 입력하세요: ');
    ReadLn(num_start);

    Write('종료 값을 입력하세요: ');
    ReadLn(num_end);

    for var i := num_start to num_end do
    begin
      var num := i;
      var numString := num.ToString();
      var sum := 0;

      for var j := 1 to numString.Length do
      begin
        sum := sum + Round(Power(StrToInt(numString[j]), j));
      end;

      if (sum = num) then
        WriteLn(num, ' is a Disarium Number');
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
