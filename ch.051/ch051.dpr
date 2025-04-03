program ch051;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Math;

function IsPerfectSquare(x: Integer): Boolean;
begin
  var s := Round(Sqrt(x));
  Result := (s * s) = x;
end;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var val1 := 5 * num * num + 4;
    var val2 := 5 * num * num - 4;
    if (IsPerfectSquare(val1) or IsPerfectSquare(val2)) then
      WriteLn(num,' is Fibonacci Number')
    else
      WriteLn(num, ' is Not a Fibonacci Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
