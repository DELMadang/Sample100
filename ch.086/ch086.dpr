program ch086;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('���ڸ� �Է��ϼ���: ');
    var num: string;
    ReadLn(num);

    if num.Contains('0') and (num[1] <> '0') then
      WriteLn(num, ' is Duck Number')
    else
      WriteLn(num, ' is Not a Duck Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
