program ch079;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  system.Generics.Collections;

function IsHappyNumber(num: Integer): Boolean;
var
  seen: THashSet<Integer>;
  digit, sumOfSquares: Integer;
begin
  seen := THashSet<Integer>.Create;
  try
    while (num <> 1) and (not seen.Contains(num)) do
    begin
      seen.Add(num);

      // 각 자릿수의 제곱의 합 계산
      sumOfSquares := 0;
      while num > 0 do
      begin
        digit := num mod 10;
        sumOfSquares := sumOfSquares + digit * digit;
        num := num div 10;
      end;

      num := sumOfSquares;
    end;

    Result := (num = 1);
  finally
    seen.Free;
  end;
end;

function FindHappyNumbersInRange(start, finish: Integer): TList<Integer>;
var
  num: Integer;
begin
  Result := TList<Integer>.Create;

  for num := start to finish do
  begin
    if IsHappyNumber(num) then
      Result.Add(num);
  end;
end;

var
  startRange, endRange: Integer;
  happyNumbers: TList<Integer>;
  i: Integer;
begin
  try
    Write('시작 범위를 입력하세요: ');
    ReadLn(startRange);

    Write('끝 범위를 입력하세요: ');
    ReadLn(endRange);

    happyNumbers := FindHappyNumbersInRange(startRange, endRange);
    try
      WriteLn(Format('%d부터 %d까지의 행복한 숫자:', [startRange, endRange]));

      for i := 0 to happyNumbers.Count - 1 do
      begin
        Write(happyNumbers[i].ToString + ' ');
      end;

      WriteLn;
      WriteLn(Format('총 %d개의 행복한 숫자가 있습니다.', [happyNumbers.Count]));
    finally
      happyNumbers.Free;
    end;

    Write('종료하려면 Enter 키를 누르세요...');
    ReadLn;
  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;
end.
