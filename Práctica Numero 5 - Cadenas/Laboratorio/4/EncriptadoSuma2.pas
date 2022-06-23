
Program EncriptadoSuma2;

Uses Crt;

Var 
  Cadenita,CadenitaEncriptada: String;
  i: Integer;

Begin
  CadenitaEncriptada := '';
  Writeln('Ingrese una cadena de caracteres');
  Readln(Cadenita);

  For i:= 1 To length(Cadenita) Do
    CadenitaEncriptada := CadenitaEncriptada + Chr(ord(Cadenita[i])+2);

  Writeln(CadenitaEncriptada);

  Readkey();

End.

Escribir un programa en Pascal que encripte una cadena de caracteres
sumando 2 al código ASCII de cada uno de sus caracteres y muestre la
nueva cadena.