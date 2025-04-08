program ch074;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('시작 숫자를 입력하세요: ');
    var num_start: Integer;
    ReadLn(num_start);

    Write('끝 숫자를 입력하세요: ');
    var num_end: Integer;
    ReadLn(num_end);

    for var i := num_start to num_end do
    begin
      var num := i;
      var sum := 0;
      for var j := 1 to num-1 do
        if (num mod j = 0) then
          sum := sum + j;

      if (sum = num) then
        WriteLn(num, ' is a Perfect Number');
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
