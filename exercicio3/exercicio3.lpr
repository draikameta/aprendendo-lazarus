program exercicio3;

{$mode objfpc}{$H+}

uses
   SysUtils;

var
  vidaPers, vidaInim, danoPers, danoInim, turno: Integer;
  nomePers, nomeInim: String;

begin
  Randomize;

  turno := 0;

  WriteLn('Digite o nome do personagem: ');
  ReadLn(nomePers);
  WriteLn('Digite a vida do personagem: ');
  ReadLn(vidaPers);
  WriteLn('Digite o nome do inimigo: ');
  ReadLn(nomeInim);
  WriteLn('Digite a vida do inimigo: ');
  ReadLn(vidaInim);

  repeat
    turno := turno + 1;
    danoPers := Random(12) + 1;
    danoInim := Random(8) + 1;
    vidaInim := vidaInim - danoPers;
    vidaPers := vidaPers - danoInim;
    WriteLn('=== TURNO ', turno, ' ===');
    WriteLn(nomePers, ' causou ', danoPers, ' de dano! | ', nomeInim, ': ', vidaInim, ' PV');
    WriteLn(nomeInim, ' causou ', danoInim, ' de dano! | ', nomePers, ': ', vidaPers, ' PV');
  until (vidaPers <= 0) or (vidaInim <= 0);

  WriteLn('=== FIM DE COMBATE ===');
  if (vidaPers <= 0) and (vidaInim <= 0) then
  WriteLn('Houve um empate! Ambos morreram no turno ',turno , '!')
  else if vidaPers <= 0 then
  WriteLn(nomeInim, ' venceu em ', turno, ' turnos!')
  else
  WriteLn(nomePers, ' venceu em ', turno, ' turnos!');

  ReadLn;
end.

