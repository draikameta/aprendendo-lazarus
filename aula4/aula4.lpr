program aula4;

{$mode objfpc}{$H+}

uses
   SysUtils;

function RolarDado(lados: Integer): Integer;
begin
  Result := Random(lados) + 1;
end;

function CalcBom(valor: Integer): Integer;
begin
  Result := valor div 2;
end;

procedure MostrarPericia(nome: String; valor: Integer);
begin
  WriteLn(nome, ': ', valor,
           '| Bom: ', CalcBom(valor),
           '| Extremo: ', valor div 5);
end;

var
  i: Integer;

begin
  Randomize;

  WriteLn('=== ROLAGENS D100 ===');
  for i := 1 to 5 do
    WriteLn('Rolagem ', i, ': ', RolarDado(100));

  WriteLn('');
  WriteLn('=== PERICIAS ===');
  MostrarPericia('Forca', 45);
  MostrarPericia('Inteligencia', 60);
  MostrarPericia('Esquiva', 30);

  ReadLn;
end.

