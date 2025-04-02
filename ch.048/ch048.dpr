program ch048;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function IntToBinaryString(Value: Integer): string;
var
  Remainder: Integer;
begin
  // 0인 경우 '0' 반환
  if Value = 0 then
    Exit('0');

  Result := '';

  // 음수 처리 (32비트 이진 표현 사용)
  if Value < 0 then
  begin
    // 2의 보수 표현을 위해 32비트로 제한
    Value := Value and $FFFFFFFF;

    // 32비트 정수의 최대값에서 시작하여 모든 비트 처리
    while Value > 0 do
    begin
      Remainder := Value mod 2;
      Result := IntToStr(Remainder) + Result;
      Value := Value div 2;
    end;

    // 32비트 표현을 위해 앞에 0 추가
    while Length(Result) < 32 do
      Result := '0' + Result;
  end
  else
  begin
    // 양수 처리
    while Value > 0 do
    begin
      Remainder := Value mod 2;
      Result := IntToStr(Remainder) + Result;
      Value := Value div 2;
    end;
  end;
end;

begin
  try
    Write('숫자를 입력하세요: ');
    var num: Integer;
    ReadLn(num);

    var binary := IntToBinaryString(num);
    var count := 0;
    for var ch in binary do
    begin
      if (ch = '1') then
        Inc(count);
    end;

    if (count mod 2 = 0) then
      WriteLn(binary, ' is Evil Number')
    else
      WriteLn(binary, ' is Not an Evil Number');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
