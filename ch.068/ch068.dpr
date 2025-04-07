program ch068;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('숫자를 입력하세요: ');
    var str: string;
    ReadLn(str);

    var reversedStr := '';
    for var i = Length(str) downto 1 do
      reversedStr := reversedStr + str[i];

    if SameText(str, reversedStr) then
      WriteLn(str, ' is Palindrome String')
    else
      WriteLn(str, ' is Not a Palindrome String');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
