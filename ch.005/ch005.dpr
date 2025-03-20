program ch005;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    var Number: Integer;
    var IsPrime := True;

    WriteLn('숫자를 입력하세요');
    ReadLn(Number);

    // 주어진 수가 소수인지 확인한다
    for var i := 2 to Number div 2 do
      if (Number mod 2 = 0) then
      begin
        IsPrime := False;
        Break;
      end;

    if IsPrime then
      WriteLn(Number, ' 은(는) 소수입니다')
    else
      WriteLn(Number, ' 은(는) 소수가 아닙니다');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
