program ch065;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('���ڸ� �Է��ϼ���: ');
    var num: Integer;
    ReadLn(num);

    var sum := 0;
    for var i := 1 to num do
      sum := sum + i;

    WriteLn('�ڿ����� ��: ', sum);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
