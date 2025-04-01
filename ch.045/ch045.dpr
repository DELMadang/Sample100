program ch045;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('갯수를 입력하세요: ');
    var n: Integer;
    ReadLn(n);

    var sum := 0;
    for var i := 1 to n do
    begin
      Write('Enter number ', i, ': ');
      var num: Integer;
      ReadLn(num);
      sum := sum + num;
    end;

    var average := sum / n;
    WriteLn('Average: ', FormatFloat('#,##0.00', average));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
