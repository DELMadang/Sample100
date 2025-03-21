program ch014;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('문자열을 입력하세요: ');
    var Text: string;
    ReadLn(Text);

    WriteLn('ASCII Code : ');
    for var i := 1 to Length(Text) do
      Write(Ord(Text[i]), ' ');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
