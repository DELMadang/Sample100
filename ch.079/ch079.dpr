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

      // �� �ڸ����� ������ �� ���
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
    Write('���� ������ �Է��ϼ���: ');
    ReadLn(startRange);

    Write('�� ������ �Է��ϼ���: ');
    ReadLn(endRange);

    happyNumbers := FindHappyNumbersInRange(startRange, endRange);
    try
      WriteLn(Format('%d���� %d������ �ູ�� ����:', [startRange, endRange]));

      for i := 0 to happyNumbers.Count - 1 do
      begin
        Write(happyNumbers[i].ToString + ' ');
      end;

      WriteLn;
      WriteLn(Format('�� %d���� �ູ�� ���ڰ� �ֽ��ϴ�.', [happyNumbers.Count]));
    finally
      happyNumbers.Free;
    end;

    Write('�����Ϸ��� Enter Ű�� ��������...');
    ReadLn;
  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;
end.
