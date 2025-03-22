program ch017;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    var arr := [64, 34, 25, 12, 22, 11, 90];

    for var i := 0 to  High(arr)-1 do
    begin
      for var j := 0 to High(arr)-1 do
      begin
        if (arr[j] > arr[j + 1]) then
        begin
          var temp := arr[j];
          arr[j] := arr[j + 1];
          arr[j + 1] := temp;
        end;
      end;
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
