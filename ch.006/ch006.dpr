program ch006;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('원금 금액: ');
    var principal: Double;
    ReadLn(principal);

    WriteLn('이자율(%): ');
    var rate: Double;
    ReadLn(rate);

    WriteLn('기간(년): ');
    var time: Double;
    ReadLn(time);

    var interest := (principal * rate * time) / 100;
    WriteLn('단순 이자 총액: ', FormatFloat('#,##0', interest));
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
