program ch021;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('Enter a number: ');
    var num: Integer;
    ReadLn(num);

    var originalNumber := num;
    var reversedNumber := 0;
    while (num > 0) do
    begin
      var remainder := num mod 10;
      reversedNumber := reversedNumber * 10 + remainder;
      num := num div 10;
    end;

    if (originalNumber = reversedNumber) then
      WriteLn('Palindrome Number')
    else
      WriteLn('Not a Palindrome Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
