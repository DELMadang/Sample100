program ch064;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Math;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var isPrime := true;
    if (num = 1) or (num = 0) then
      isPrime := false
    else
      for var i := 2 to Round(Sqrt(num)) do
        if (num mod i = 0) then
        begin
          isPrime := false;
          break;
        end;

    if (isPrime) then
      WriteLn(num, ' is Prime Number')
    else
      WriteLn(num, ' is Not a Prime Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
