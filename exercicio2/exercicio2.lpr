program exercicio2;

{$mode objfpc}{$H+}

uses
  SysUtils;

var
  nomePers, respStatus, classePers: String;
  vidaAtualPers, vidaMaxPers, porcentagem, resultado: Integer;

begin
  Write('Nome do personagem: ');
  ReadLn(nomePers);

  Write('Classe do personagem: ');
  ReadLn(classePers);

  Write('Vida Maxima do personagem: ');
  ReadLn(vidaMaxPers);

  Write('Vida Atual do personagem: ');
  ReadLn(vidaAtualPers);

  porcentagem := (vidaAtualPers * 100) div vidaMaxPers;

  if porcentagem <= 0 then
  resultado := 0
  else if porcentagem < 50 then
  resultado := 1
  else if porcentagem < 100 then
  resultado := 2
  else
  resultado := 3;

  case resultado OF
  0:
  begin
    respStatus := 'Inconsiente';
  end;
  1:
  begin
    respStatus := 'Gravemente ferido';
  end;
  2:
  begin
    respStatus := 'Levemente ferido';
  end;
  3:
  begin
    respStatus := 'Intacto';
  end;
  end;

  WriteLn('=== FICHA ===');
  WriteLn('Nome: ', nomePers);
  WriteLn('Classe: ', classePers);
  WriteLn('Vida Atual: ', vidaAtualPers);
  WriteLn('Vida Maxima: ', vidaMaxPers);
  WriteLn('Status: ', respStatus);

  ReadLn;

end.

