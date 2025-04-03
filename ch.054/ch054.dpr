program ch054;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var temp := IntToStr(num);
    var arr: TArray<Integer>;
    SetLength(arr, Length(temp));

    for var i := 0 to High(arr) do
    begin
      arr[i] := StrToInt(temp[i+1]);
    end;

    var sum := 0;
    while (sum < num) do
    begin
      sum := 0;
      for var i := 0 to High(arr) do
      begin
        sum := sum + arr[i];
        if (i < High(arr)) then
          arr[i] := arr[i + 1]
        else
          arr[i] := sum;
      end;
    end;

    if (sum = num) then
      WriteLn(num, ' is Keith Number')
    else
      WriteLn(num, ' is Not a Keith Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
