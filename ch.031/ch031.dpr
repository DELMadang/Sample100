program ch031;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('¿É¼Ç¼±ÅÃ: ');
    WriteLn('  1. ¼·¾¾ => È­¾¾ º¯È¯');
    WriteLn('  2. È­¾¾ -> ¼·¾¾ º¯È¯');

    var choice: Integer;
    ReadLn(choice);

    case choice of
    1:
      begin
        Write('¼·¾¾ ¿Âµµ¸¦ ÀÔ·ÂÇÏ¼¼¿ä: ');
        var celsius: double;
        ReadLn(celsius);

        var fahrenheit := (celsius * 9 / 5) + 32;
        WriteLn('È­¾¾¿Âµµ: ', FormatFloat('#,##0.0', fahrenheit));
      end;
    2:
      begin
        Write('È­¾¾ ¿Âµµ¸¦ ÀÔ·ÂÇÏ¼¼¿ä: ');
        var fahrenheit2: double;
        ReadLn(fahrenheit2);

        var celsius2 := (fahrenheit2 - 32) * 5 / 9;
        WriteLn('¼·¾¾ ¿Âµµ: ', FormatFloat('#,##0', celsius2));
      end;
    end;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
