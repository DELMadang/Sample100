program ch002;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  var Number1, Number2: string;

  try
    WriteLn('첫번재 숫자를 정수로 입력하세요: ');
    ReadLn(Number1);

    WriteLn('두번재 숫자를 정수로 입력하세요: ');
    ReadLn(Number2);

    WriteLn('입력한 두개의 숫자를 더한 값은 다음과 같습니다: ');
    WriteLn(StrToInt(Number1) + StrToInt(Number2));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
