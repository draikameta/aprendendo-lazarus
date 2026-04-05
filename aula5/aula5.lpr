program aula5;

{$mode objfpc}{$H+}

uses
   SysUtils;

type
  TPericia = record
    Nome: String;
    Valor: Integer;
  end;

  function CalcBom(valor: Integer): Integer;
  begin
    Result := valor div 2;
  end;

  function CalcExtremo(valor: Integer): Integer;
  begin
    Result := valor div 5;
  end;

  Procedure MostrarPericia(p: TPericia);
  begin
    WriteLn(p.Nome, ': ', p.Valor,
            ' | Bom: ', CalcBom(p.Valor),
            ' | Extremo: ', CalcExtremo(p.Valor));
  end;

var
  pericias: array[1..4] of TPericia;
  i: Integer;

begin
  pericias[1].Nome := 'Forca';         pericias[1].Valor := 45;
  pericias[2].Nome := 'Esquiva';       pericias[2].Valor := 30;
  pericias[3].Nome := 'Inteligencia';  pericias[3].Valor := 60;
  pericias[4].Nome := 'Sorte';         pericias[4].Valor := 25;

  WriteLn('=== PERICIAS ===');
  for i := 1 to 4 do
    MostrarPericia(pericias[i]);

  ReadLn;
end.









