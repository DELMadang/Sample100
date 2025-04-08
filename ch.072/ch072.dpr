program ch072;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function CalcSum(n: Integer): Integer;
begin
  if (n = 0) then
    Result := 0
  else
    Result := n + CalcSum(n - 1);
end;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var sum := CalcSum(num);
    WriteLn(' Sum of first ', num, ' natural numbers: ', sum);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
