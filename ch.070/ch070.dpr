program ch070;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    var arr := [11, 25, 12, 22, 64];
    var n := Length(arr);
    for var i := 0 to n-2 do
    begin
      var minIndex := i;
      for var j := i + 1 to n-1 do
      begin
        if (arr[j] < arr[minIndex]) then
          minIndex := j;
      end;

      var temp := arr[minIndex];
      arr[minIndex] := arr[i];
      arr[i] := temp;
    end;

    Write('Sorted array: ');
    for var element in arr do
      Write(element, ' ');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
