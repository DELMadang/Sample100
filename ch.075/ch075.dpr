program ch075;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function Factorial(n: Integer): Integer;
begin
  if (n = 0) then
    Result := 1
  else
    Result := n * Factorial(n - 1);
end;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var fact := Factorial(num);
    WriteLn(num, ' Factorial: ', fact);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
