program ch011;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('�⵵�� �Է��ϼ���: ');
    var Year: Integer;
    ReadLn(Year);

    if ((Year mod 4 = 0) and (Year mod 100 <> 0)) or (Year mod 400 = 0) then
      WriteLn(Year, ' ���� �����Դϴ�')
    else
      WriteLn(Year, ' ���� ����Դϴ�');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
