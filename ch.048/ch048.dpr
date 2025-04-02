program ch048;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function IntToBinaryString(Value: Integer): string;
var
  Remainder: Integer;
begin
  // 0�� ��� '0' ��ȯ
  if Value = 0 then
    Exit('0');

  Result := '';

  // ���� ó�� (32��Ʈ ���� ǥ�� ���)
  if Value < 0 then
  begin
    // 2�� ���� ǥ���� ���� 32��Ʈ�� ����
    Value := Value and $FFFFFFFF;

    // 32��Ʈ ������ �ִ밪���� �����Ͽ� ��� ��Ʈ ó��
    while Value > 0 do
    begin
      Remainder := Value mod 2;
      Result := IntToStr(Remainder) + Result;
      Value := Value div 2;
    end;

    // 32��Ʈ ǥ���� ���� �տ� 0 �߰�
    while Length(Result) < 32 do
      Result := '0' + Result;
  end
  else
  begin
    // ��� ó��
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
    Write('���ڸ� �Է��ϼ���: ');
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
