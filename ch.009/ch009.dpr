program ch009;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('���ڿ��� �Է��ϼ���: ');
    var Data: string;
    ReadLn(Data);

    var ReserveData := '';
    for var i := Length(Data) downto 1 do
      ReserveData := ReserveData + Data[i];

    WriteLn('Reserve ���ڿ�: ', ReserveData);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
