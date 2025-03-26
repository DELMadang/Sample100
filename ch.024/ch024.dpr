program ch024;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    WriteLn('Enter length: ');
    var length: double;
    ReadLn(length);

    WriteLn('Enter breadth: ');
    var breadth: double;
    ReadLn(breadth);

    var area := length * breadth;
    var perimeter := 2 * (length + breadth);

    WriteLn('Area: ', FormatFloat('#,##0.00', area));
    WriteLn('Perimeter: ', FormatFloat('#,##0.00', perimeter));

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
