program exercicio4;

{$mode objfpc}{$H+}

uses
  SysUtils;

var
  nomePers, nomeInim: String;
  vidaPers, vidaInim, danoPers, danoInim, turno: Integer;

function RolarDado(lados: Integer): Integer;
begin
  Result := Random(lados) + 1;
end;

procedure ExecutarTurno(var nomePers, nomeInim: String; var vidaPers, vidaInim, danoPers, danoInim, turno: Integer);
begin

  repeat
    turno := turno + 1;
    danoPers := RolarDado(6);
    danoInim := RolarDado(6);
    vidaPers := vidaPers - danoInim;
    vidaInim := vidaInim - danoPers;
    WriteLn('=== TURNO ', turno, ' ===');
    WriteLn(nomePers, ' atacou e causou ', danoPers, ' de dano! | ', nomeInim, ': ',vidaInim ,' PV.');
    WriteLn(nomeInim, ' atacou e causou ', danoInim, ' de dano! | ', nomePers, ': ',vidaPers ,' PV.');
  until (vidaPers <= 0) or (vidaInim <= 0);

  ReadLn;

end;

procedure MostrarResultado(vidaPers, vidaInim, turno: Integer; nomePers, nomeInim: String);
begin
  WriteLn('=== RESULTADOS ===');
  if (vidaPers <= 0) and (vidaInim <= 0) then
  WriteLn('Nenhum dos dois venceram, ambos cairam no turno ', turno, '!')
  else if vidaPers <= 0 then
  WriteLn(nomeInim, ' venceu! O mesmo deu o golpe final no turno ', turno, '!')
  else
  WriteLn(nomePers, ' venceu! O mesmo deu o golpe final no turno ', turno, '!');

  ReadLn;
end;

begin    // ExecutarTurno(var nomePers, var nomeInim: String; var vidaPers, var vidaInim, var danoPers, var danoInim, var turno: Integer);
  Randomize;
  turno := 0;

  Write('Digite o nome do combatente: ');
  ReadLn(nomePers);
  Write('Digite a vida: ');
  ReadLn(vidaPers);
  Write('Digite o nome do segundo combatente: ');
  ReadLn(nomeInim);
  Write('Digite a vida: ');
  ReadLn(vidaInim);

  ExecutarTurno(nomePers, nomeInim, vidaPers, vidaInim, danoPers, danoInim, turno);
  MostrarResultado(vidaPers, vidaInim, turno, nomePers, nomeInim);
end.

