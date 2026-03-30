program aula3;

{$mode objfpc}{$H+}

uses
  SysUtils;

var
i: Integer;
totalDano: Integer;
rolagem: Integer;

begin
  Randomize;
  totalDano := 0;

  WriteLn('=== 5 ROLAGENS DE D20 ===');

  for i := 1 to 5 do
  begin
    rolagem := Random(20) + 1;
    totalDano := totalDano + rolagem;
    WriteLn('Rolagem ', i, ': ', rolagem);
  end;

  WriteLn('Total: ', totalDano);
  WriteLn('Media: ', totalDano div 5);

  ReadLn;
end.

