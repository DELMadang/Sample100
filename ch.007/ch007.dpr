program ch007;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('숫자를 입력하세요: ');
    var Number: Integer;
    ReadLn(Number);

    if (Number mod 2 = 0) then
      WriteLn(Number, ' 은(는) 짝수 입니다')
    else
      WriteLn(Number, ' 은(는) 홀수 입니다');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
