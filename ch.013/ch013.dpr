program ch013;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('문자열을 입력하세요: ');
    var Text: string;
    ReadLn(Text);

    // 입력한 문자열을 거꾸로 만든다
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
