program ch060;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    var arr := [5, 3, 4, 8, 2];
    var n := High(arr);
    for var i := 0 to n do
    begin
      for var j := 0 to n-1 do
      begin
        if (arr[j] > arr[j + 1]) then
        begin
          var temp := arr[j];
          arr[j] := arr[j + 1];
          arr[j + 1] := temp;
        end;
      end;
    end;

    Write('Sorted array: ');
    for var element in arr do
      Write(element, ', ');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
