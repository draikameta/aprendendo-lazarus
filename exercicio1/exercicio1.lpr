program exercicio1;

{$mode objfpc}{$H+}

uses
  SysUtils;

var
  nomePers, classePers: String;
  nivelPers, pvPers: Integer;

begin
  nomePers := 'raika';
  classePers := 'arcanista';
  nivelPers := 1;
  pvPers := 15;

  WriteLn('=== FICHA DO PERSONAGEM ===');
  WriteLn('Nome: ', nomePers);
  WriteLn('Classe: ', classePers);
  WriteLn('Vida: ', pvPers);
  WriteLn('Nivel: ', nivelPers);

  ReadLn;
end.

