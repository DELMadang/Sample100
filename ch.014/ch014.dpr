program ch014;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('숫자를 입력하세요: ');
    var Number: Integer;
    ReadLn(Number);

    var sum := 0;
    for var i := 1 to Number do
      sum := sum + i;

    WriteLn('자연수의 합: ', sum);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
