program ch025;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var reversedNumber := 0;
    while (num > 0) do
    begin
      var remainder := num mod 10;
      reversedNumber := reversedNumber * 10 + remainder;
      num := num div 10;
    end;

    WriteLn('Reversed Number: ', reversedNumber);
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
