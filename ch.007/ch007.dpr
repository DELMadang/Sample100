program ch007;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('���ڸ� �Է��ϼ���: ');
    var Number: Integer;
    ReadLn(Number);

    if (Number mod 2 = 0) then
      WriteLn(Number, ' ��(��) ¦�� �Դϴ�')
    else
      WriteLn(Number, ' ��(��) Ȧ�� �Դϴ�');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
