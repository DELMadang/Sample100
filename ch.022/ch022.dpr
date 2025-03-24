program ch022;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    var arr := [64, 25, 12, 22, 11];
    var minIndex: Integer;

    for var i := Low(arr) to High(arr) do
    begin
      minIndex := i;
      for var j := i + 1 to High(arr) do
      begin
        if (arr[j] < arr[minIndex]) then
          minIndex := j;
      end;

      var temp := arr[minIndex];
      arr[minIndex] := arr[i];
      arr[i] := temp;
    end;

    Write('Sorted Array: ');
    for var element in arr do
      Write(element, ' ');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
