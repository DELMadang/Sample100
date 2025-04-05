program ch059;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var square := num * num;
    var strSquare := square.ToString();
    var isKaprekar := False;
    for var i := 1 to strSquare.Length do
    begin
      var part1 := StrToInt(strSquare.Substring(0, i));
      var part2 := StrToInt(strSquare.Substring(i));
      if (part1 + part2 = num) then
      begin
        isKaprekar := True;
        break;
      end;
    end;

    if isKaprekar then
      WriteLn(num, ' is Kaprekar Number')
    else
      WriteLn(num, ' is Not a Kaprekar Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
