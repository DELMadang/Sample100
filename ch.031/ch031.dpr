program ch031;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('�ɼǼ���: ');
    WriteLn('  1. ���� => ȭ�� ��ȯ');
    WriteLn('  2. ȭ�� -> ���� ��ȯ');

    var choice: Integer;
    ReadLn(choice);

    case choice of
    1:
      begin
        Write('���� �µ��� �Է��ϼ���: ');
        var celsius: double;
        ReadLn(celsius);

        var fahrenheit := (celsius * 9 / 5) + 32;
        WriteLn('ȭ���µ�: ', FormatFloat('#,##0.0', fahrenheit));
      end;
    2:
      begin
        Write('ȭ�� �µ��� �Է��ϼ���: ');
        var fahrenheit2: double;
        ReadLn(fahrenheit2);

        var celsius2 := (fahrenheit2 - 32) * 5 / 9;
        WriteLn('���� �µ�: ', FormatFloat('#,##0', celsius2));
      end;
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
