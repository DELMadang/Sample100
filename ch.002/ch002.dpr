program ch002;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  var Number1, Number2: string;

  try
    WriteLn('ù���� ���ڸ� ������ �Է��ϼ���: ');
    ReadLn(Number1);

    WriteLn('�ι��� ���ڸ� ������ �Է��ϼ���: ');
    ReadLn(Number2);

    WriteLn('�Է��� �ΰ��� ���ڸ� ���� ���� ������ �����ϴ�: ');
    WriteLn(StrToInt(Number1) + StrToInt(Number2));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
