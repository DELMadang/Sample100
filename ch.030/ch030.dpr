program ch030;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('�ݰ��� �Է��ϼ���: ');
    var radius: double;
    ReadLn(radius);

    var circumference := 2 * PI * radius;
    var area := PI * radius * radius;

    WriteLn('�ѷ�: ', circumference);
    WriteLn('����: ', area);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
