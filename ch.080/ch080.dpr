program ch080;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    var arr := [5, 2, 4, 6, 1, 3];
    var n := Length(arr);
    for var i := 1 to n-1 do
    begin
      var key := arr[i];
      var j := i - 1;

      while (j >= 0) and (arr[j] > key) do
      begin
        arr[j + 1] := arr[j];
        j := j - 1;
      end;

      arr[j + 1] := key;
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
