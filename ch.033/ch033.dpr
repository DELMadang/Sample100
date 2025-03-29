program ch033;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    var arr := [12, 11, 13, 5, 6];
    for var i := Low(arr) to High(arr) do
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

    Write('Sorted Array: ');
    for var element in arr do
      Write(element, ' ');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
