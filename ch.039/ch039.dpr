program ch039;

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
    var strNum := num.ToString();
    var strSquare := square.ToString();
    if (strSquare.EndsWith(strNum)) then
      WriteLn(num, 'is Automorphic Number')
    else
      WriteLn(num, 'is Not an Automorphic Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
