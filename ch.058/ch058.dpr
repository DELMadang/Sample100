program ch058;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    Write('시작 숫자를 입력하세요: ');
    var num1: Integer;
    ReadLn(num1);

    Write('끝 숫자를 입력하세요: ');
    var num2: Integer;
    ReadLn(num2);

    for var i := num1 to num2 do
    begin
      var temp := IntToStr(i);
      var num := StrToInt(temp);
      var arr: TArray<Integer>;
      SetLength(arr, Length(temp));

      for var j := 0 to High(arr) do
      begin
        arr[j] := StrToInt(temp[j+1]);
      end;

      var sum := 0;
      while (sum < num) do
      begin
        sum := 0;
        for var j := 0 to High(arr) do
        begin
          sum := sum + arr[j];
          if (j < High(arr)) then
            arr[j] := arr[j + 1]
          else
            arr[j] := sum;
        end;
      end;

      if (sum = num) then
        WriteLn(i, ' is Keith Number');
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
