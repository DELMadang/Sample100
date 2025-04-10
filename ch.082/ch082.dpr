program ch082;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function FindGCD(a, b: Integer): Integer;
begin
  while (b <> 0) do
  begin
    var temp := b;
    b := a mod b;
    a := temp;
  end;

 Result := a;
end;

function FindLCM(arr: TArray<Integer>; n: Integer): Integer;
begin
  var lcm := arr[0];
  for var i := 1 to n-1 do
  begin
    lcm := (lcm * arr[i]) div FindGCD(lcm, arr[i]);
  end;

 Result := lcm;
end;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var arr: TArray<Integer>;
    SetLength(arr, num);

    for var i := 0 to num-1 do
    begin
      Write('Enter number ', (i + 1) , ': ');
      ReadLn(arr[i]);
    end;

    WriteLn('LCM: ', FindLCM(arr, num));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
