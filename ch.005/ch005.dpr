program ch005;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    var Number: Integer;
    var IsPrime := True;

    WriteLn('���ڸ� �Է��ϼ���');
    ReadLn(Number);

    // �־��� ���� �Ҽ����� Ȯ���Ѵ�
    for var i := 2 to Number div 2 do
      if (Number mod 2 = 0) then
      begin
        IsPrime := False;
        Break;
      end;

    if IsPrime then
      WriteLn(Number, ' ��(��) �Ҽ��Դϴ�')
    else
      WriteLn(Number, ' ��(��) �Ҽ��� �ƴմϴ�');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
