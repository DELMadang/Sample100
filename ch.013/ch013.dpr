program ch013;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('���ڿ��� �Է��ϼ���: ');
    var Text: string;
    ReadLn(Text);

    // �Է��� ���ڿ��� �Ųٷ� �����
    var ReserveText := '';
    for var i := Length(Text) downto 1 do
      ReserveText := ReserveText + Text[i];

    if (Text = ReserveText) then
      WriteLn(Text, ' = ', ReserveText, '=>  True')
    else
      WriteLn(Text, ' = ', ReserveText, '=>  False');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
