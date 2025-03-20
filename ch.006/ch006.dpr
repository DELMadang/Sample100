program ch006;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('���� �ݾ�: ');
    var principal: Double;
    ReadLn(principal);

    WriteLn('������(%): ');
    var rate: Double;
    ReadLn(rate);

    WriteLn('�Ⱓ(��): ');
    var time: Double;
    ReadLn(time);

    var interest := (principal * rate * time) / 100;
    WriteLn('�ܼ� ���� �Ѿ�: ', FormatFloat('#,##0', interest));
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
