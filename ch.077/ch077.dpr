program ch077;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var a := 0;
    var b := 1;
    var c := 0;

    Write('Fibonacci Series: ', a, ' ', b, ' ');
    for var i := 2 to num-1 do
    begin
      c := a + b;
      if (c <= num) then
        Write(c, ' ');

      a := b;
      b := c;
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
