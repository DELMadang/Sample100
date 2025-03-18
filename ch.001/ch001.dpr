program ch001;

// 델파이 애플리케이션을 콘솔로 만들기 위한 지시어이다.
// 이것을 지정해야 WriteLn 등의 함수를 사용할 수 있다
{$APPTYPE CONSOLE}

uses
  System.SysUtils;

begin
  try
    // 콘솔로 출력한다
    WriteLn('Hello, World');

    // 사용자의 입력 대기하기
    ReadLn;
  except
    // 뭔가 오류가 발생했을 경우, 오류가 발생한 클래스명과 메세지를 출력한다
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
