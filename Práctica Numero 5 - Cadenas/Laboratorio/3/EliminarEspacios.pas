
Program EliminarEspacios;

Uses Crt;

Var 
  Cadenita,CadenitaSinEspacios: string;
  i: Integer;

Begin
  CadenitaSinEspacios := '';

  Writeln('Ingrese una cadena de caracteres.');
  Readln(Cadenita);

  For i:=1 To length(cadenita) Do
    Begin
      If cadenita[i] <> ' ' Then
        CadenitaSinEspacios :=  CadenitaSinEspacios + cadenita[i];
    End;

  Writeln(CadenitaSinEspacios);

  Readkey();

End.

Escribir un programa en Pascal que elimine los blancos de una cadena de
caracteres e imprima la nueva cadena