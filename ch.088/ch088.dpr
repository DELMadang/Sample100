program ch088;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: string;
    ReadLn(num);

    var validChars := '01689';
    var n := 0;
    for var i := 1 to (num.Length + 1) div 2 do
      if (not validChars.Contains(num[i]) or (num[i] <> num[num.Length - 1- i])) then
      begin
        n := 1;
        break;
      end;

    if n = 0 then
      WriteLn(num, ' is Strobogrammatic Number')
    else
      WriteLn(num, ' is not Strobogrammatic Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
