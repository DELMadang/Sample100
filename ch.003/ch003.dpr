program ch003;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  var Number: string;
  try
    WriteLn('숫자를 입력하세요: ');
    ReadLn(Number);

    var LSummary: Int64 := 1;
    for var i := 1 to StrToInt(Number) do
      LSummary := LSummary * i;

    WriteLn('Factorial : ', LSummary);
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
