program ch001;

// ������ ���ø����̼��� �ַܼ� ����� ���� ���þ��̴�.
// �̰��� �����ؾ� WriteLn ���� �Լ��� ����� �� �ִ�
{$APPTYPE CONSOLE}

uses
  System.SysUtils;

begin
  try
    // �ַܼ� ����Ѵ�
    WriteLn('Hello, World');

    // ������� �Է� ����ϱ�
    ReadLn;
  except
    // ���� ������ �߻����� ���, ������ �߻��� Ŭ������� �޼����� ����Ѵ�
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
