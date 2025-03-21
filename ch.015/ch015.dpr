program ch015;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    // 난수 발생을 위한 시드를 초기화한다
    Randomize();

    for var i := 1 to 5 do
       WriteLn(i, Random(100)); // 1 ~ 100 사이의 난수를 발생시킨다

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.


