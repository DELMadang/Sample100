program ch016;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('숫자를 입력하세요: ');
    var Number: Integer;
    ReadLn(Number);

    var originalNumber: Integer := Number;
    var remainder: Integer := 0;
    var result: Integer := 0;

    while (originalNumber <> 0) do
    begin
      remainder := originalNumber mod 10;
      result := result + (remainder * remainder * remainder);
      originalNumber := originalNumber div 10;
    end;

    if (result = Number) then
      WriteLn('Armstrong Number')
    else
      WriteLn('Not an Armstrong Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
