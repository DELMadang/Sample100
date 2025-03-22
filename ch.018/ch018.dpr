program ch018;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function Search(arr: TArray<Integer>; x: Integer): Integer;
begin
  var left := 0;
  var right := High(arr);

  while (left <= right) do
  begin
    var mid := left + (right - left) div 2;
    if (arr[mid] = x) then
      Exit(mid);

    if (arr[mid] < x) then
      left := mid + 1
    else
      right := mid - 1;
  end;

  Result := -1;
end;

begin
  try
    var arr: TArray<Integer> := [2, 3, 4, 10, 40];
    var x := 10;
    var result := Search(arr, x);

    if (result = -1) then
      WriteLn('Element not present')
    else
      WriteLn('Element found at index ', result);

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
