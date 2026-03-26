program aula2;

{$mode objfpc}{$H+}

uses
  SysUtils;

var
  nomePersonagem: String;
  vidaAtual: Integer;

begin
  Write('Nome do personagem: ');
  ReadLn(nomePersonagem);

  Write('Vida do personagem: ');
  ReadLn(vidaAtual);

  WriteLn('');
  WriteLn('=== STATUS ===');
  WriteLn('Nome: ', nomePersonagem);
  WriteLn('Vida: ', vidaAtual);
  WriteLn('');

  if vidaAtual <= 0 then
  WriteLn('Status: MORTO')
  else if vidaAtual <= 5 then
  WriteLn('Status: CRITICO')
  else if vidaAtual <= 10 then
  WriteLn('Status: FERIDO')
  else
  WriteLn('Status: SAUDAVEL');

  ReadLn;
end.













