program ch040;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function Partition(arr: TArray<Integer>; low, high: Integer): Integer;
begin
  var pivot := arr[high];
  var i := low - 1;
  for var j := low to high do
  begin
    if (arr[j] < pivot) then
    begin
      Inc(i);
      var temp := arr[i];
      arr[i] := arr[j];
      arr[j] := temp;
    end;
  end;

  var temp1 := arr[i + 1];
  arr[i + 1] := arr[high];
  arr[high] := temp1;

  Result := i + 1;
end;

procedure Sort(arr: TArray<Integer>; low, high: Integer);
begin
  var pivot: Integer;
  if (low < high) then
    pivot := Partition(arr, low, high);

  Sort(arr, low, pivot - 1);
  Sort(arr, pivot + 1, high);
end;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var arr: TArray<Integer> := [10, 7, 8, 9, 1, 5];
    var n := Length(arr);
    Sort(arr, 0, n - 1);

    Write('Sorted array: ');
    for var element in arr do
      Write(element, ' ');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
