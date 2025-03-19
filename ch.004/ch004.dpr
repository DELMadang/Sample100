program ch004;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  var Number: string;

  try
    WriteLn('숫자를 입력하세요: ');
    ReadLn(Number);

    var a: Integer := 0;
    var b: Integer := 1;
    var c: Integer;
    var Data: string := '';

    for var i := 0 to StrToInt(Number)-1 do
    begin
      Data := Data + IntToStr(a) + ' ';

      c :=  a + b;
      a := b;
      b := c;
    end;

    WriteLn('Fibonacci : ', Data);
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
