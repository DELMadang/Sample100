program ch011;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('년도를 입력하세요: ');
    var Year: Integer;
    ReadLn(Year);

    if ((Year mod 4 = 0) and (Year mod 100 <> 0)) or (Year mod 400 = 0) then
      WriteLn(Year, ' 년은 윤년입니다')
    else
      WriteLn(Year, ' 년은 평년입니다');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
