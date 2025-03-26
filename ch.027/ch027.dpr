program ch027;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Math;

begin
  try
    Write('Enter the base: ');
    var baseNum: Integer;
    ReadLn(baseNum);

    Write('Enter the exponent: ');
    var exponent: Integer;
    ReadLn(exponent);

    var result := System.Math.Power(baseNum, exponent);
    WriteLn('Result: ', FormatFloat('#,##0.00', result));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
