program ch019;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Generics.Collections;

function SortedString(str: string): string;
begin
  var arr: TArray<Char>;

  // ���ڿ��� ���̸�ŭ �迭�� ����
  SetLength(arr, Length(str));

  // �迭�� �� �ֱ�
  for var i := 1 to Length(str) do
    arr[i-1] := str[i];

  // ����(�����Ʈ)
  for var i := 0 to High(arr)-1 do
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

  // �迭�� ���ڿ��� ��ȯ
  Result := '';
  for var i := Low(arr) to High(arr) do
    Result := Result + arr[i];
end;

begin
  try
    WriteLn('Enter the first string: ');
    var str1: string;
    ReadLn(str1);

    WriteLn('Enter the second string: ');
    var str2: string;
    ReadLn(str2);

    var sortedStr1 := SortedString(str1);
    var sortedStr2 := SortedString(str2);

    WriteLn('Sorted String 1: ', sortedStr1);
    WriteLn('Sorted String 2: ', sortedStr2);

    if (sortedStr1 = sortedStr2) then
      WriteLn('Anagrams')
    else
      WriteLn('Not Anagrams');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
