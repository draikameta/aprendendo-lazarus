program exercicio5;

{$mode objfpc}{$H+}

uses
  SysUtils;

type
  TPersonagem = record
    Nome: String;
    Classe: String;
    Vida: Integer;
    valorPericias: array[1..5] of Integer;
  end;

  function CalcBom(valor: Integer): Integer;
  begin
    Result := valor div 2;
  end;

  function CalcExtremo(valor: Integer): Integer;
  begin
    Result := valor div 5;
  end;

  procedure MostrarFicha(p: TPersonagem);
  var
    nomesPericias: array[1..5] of String;
    i: Integer;
  begin
    nomesPericias[1] := 'Forca';
    nomesPericias[2] := 'Destreza';
    nomesPericias[3] := 'Inteligencia';
    nomesPericias[4] := 'Sorte';
    nomesPericias[5] := 'Esquiva';
  WriteLn('=== FICHA DE ', p.Nome, ' ===');
  WriteLn('Classe: ', P.Classe);
  WriteLn('Vida: ', p.Vida);
  WriteLn('');
  WriteLn('--- PERICIAS ---');
  for i := 1 to 5 do
    WriteLn(nomesPericias[i], ': ', p.valorPericias[i],
            ' | Bom: ', CalcBom(p.valorPericias[i]),
            ' | Extremo: ', CalcExtremo(p.valorPericias[i]));
  end;

var
  personagem: TPersonagem;
  i: Integer;

begin
  Randomize;

  WriteLn('Digite o nome do personagem: ');
  ReadLn(personagem.Nome);
  WriteLn('Digite a classe do personagem: ');
  ReadLn(personagem.Classe);

  personagem.Vida := 20;

  for i := 1 to 5 do
    personagem.valorPericias[i] := Random(80) + 20;

  MostrarFicha(personagem);

  ReadLn;

end.








