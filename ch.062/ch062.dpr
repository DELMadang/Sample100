program ch062;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('���ڸ� �Է��ϼ���: ');
    var num: Integer;
    ReadLn(num);

    Write('Factors of ', num, ' are: ');
    for var i := 1 to num do
    begin
      if (num mod i = 0) then
       Write(i, ' ');
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
