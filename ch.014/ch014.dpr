program ch014;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('���ڸ� �Է��ϼ���: ');
    var Number: Integer;
    ReadLn(Number);

    var sum := 0;
    for var i := 1 to Number do
      sum := sum + i;

    WriteLn('�ڿ����� ��: ', sum);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
