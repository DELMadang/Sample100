program ch067;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var isComposite := false;
    if (num = 0) or (num = 1) then
      isComposite := false
    else
      for var i := 2 to num div 2 do
      begin
        if (num mod i = 0) then
        begin
          isComposite := true;
          break;
        end;
      end;

    if (isComposite) then
      WriteLn(num, ' is Composite Number')
    else
      WriteLn(num, ' is Not a Composite Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
