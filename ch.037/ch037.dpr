program ch037;

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
    while (num > 0) do
    begin
      sum := sum + (num mod 10);
      num := num div 10;
    end;

    WriteLn('Sum of digits: ', sum);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
