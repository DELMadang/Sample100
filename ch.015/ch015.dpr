program ch015;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    // ���� �߻��� ���� �õ带 �ʱ�ȭ�Ѵ�
    Randomize();

    for var i := 1 to 5 do
       WriteLn(i, Random(100)); // 1 ~ 100 ������ ������ �߻���Ų��

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.


