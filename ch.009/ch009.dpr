program ch009;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('문자열을 입력하세요: ');
    var Data: string;
    ReadLn(Data);

    var ReserveData := '';
    for var i := Length(Data) downto 1 do
      ReserveData := ReserveData + Data[i];

    WriteLn('Reserve 문자열: ', ReserveData);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
