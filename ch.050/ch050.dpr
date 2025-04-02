program ch050;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

procedure  Merge(arr: TArray<Integer>; l, m, r: Integer);
begin
  var n1 := m - l + 1;
  var n2 := r - m;
  var larr: TArray<Integer>;
  var rarr: TArray<Integer>;;

  SetLength(larr, n1);
  SetLength(rarr, n2);

  for var i := 0 to n1-1 do
    larr[i] := arr[l + i];

  for var j := 0 to n2-1 do
    rarr[j] := arr[m + 1 + j];

  var k := l;
  var x := 0;
  var y := 0;

  while (x < n1) and (y < n2) do
  begin
    if (larr[x] <= rarr[y]) then
    begin
      arr[k] := larr[x];
      Inc(x);
    end
    else
    begin
      arr[k] := rarr[y];
      Inc(y);
    end;

    Inc(k);
  end;

  while (x < n1) do
  begin
    arr[k] := larr[x];
    Inc(x);
    Inc(k);
  end;

  while (y < n2) do
  begin
    arr[k] := rarr[y];
    Inc(y);
    Inc(k);
  end;
end;

procedure Sort(arr: TArray<Integer>; l, r: Integer);
begin
  if (l < r) then
  begin
    var m := l + (r - l) div 2;
    Sort(arr, l, m);
    Sort(arr, m + 1, r);
    Merge(arr, l, m, r);
  end;
end;

begin
  try
    var arr: TArray<Integer> := [8, 3, 5, 4, 7, 6, 1, 2];
    var n := Length(arr);

    Write('array: ');
    for var element in arr do
      Write(element, ' ');

    WriteLn('');

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
