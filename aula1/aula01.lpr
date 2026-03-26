program aula01;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  nomePersonagem: String;
  nivelAtual: Integer;
  vidaMaxima: Integer;

begin
  nomePersonagem := 'Dante';
  nivelAtual := 1;
  vidaMaxima := 20;

  WriteLn('Nome: ', nomePersonagem);
  WriteLn('Nível: ', nivelAtual);
  WriteLn('Vida Maxima: ', vidaMaxima);

  ReadLn;
end.

