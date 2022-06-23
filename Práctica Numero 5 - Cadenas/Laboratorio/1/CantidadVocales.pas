
Program CantidadVocales;

Uses Crt;

Var 
  Cadenita: String[80];
  i : integer;
  validacion: Boolean;
  ContVocales: Array[1..5] Of integer;
Begin

  //Se inicializa el arreglo.
  For i:=1 To 5 Do
    Begin
      ContVocales[i] := 0;
    End;

  Repeat
    Writeln('Ingrese una cadena conformada por varias palabras.');
    Readln(Cadenita);
    If Pos(' ',cadenita) <> 0 Then
      validacion := true
    Else
      Begin
        Writeln('La cadena que acaba de ingresar no contiene mas de una palabra. presione cualquier tecla e intente de nuevo.');
        Readkey();
      End;
  Until Validacion = true;

  For i:=1 To length(Cadenita) Do
    Begin
      Case Cadenita[i] Of 
        'a','A': ContVocales[1] := ContVocales[1]+1;
        'e','E': ContVocales[2] := ContVocales[2]+1;
        'i','I': ContVocales[3] := ContVocales[3]+1;
        'o','O': ContVocales[4] := ContVocales[4]+1;
        'u','U': ContVocales[5] := ContVocales[5]+1;
      End;
    End;

  Writeln(' ');


  Write('a ',ContVocales[1],' ');
  For i:=1 To ContVocales[1] Do
    Begin
      Write('*');
    End;

  Writeln(' ');

  Write('e ',ContVocales[2],' ');
  For i:=1 To ContVocales[2] Do
    Begin
      Write('*');
    End;

  Writeln(' ');

  Write('i ',ContVocales[3],' ');
  For i:=1 To ContVocales[3] Do
    Begin
      Write('*');
    End;

  Writeln(' ');

  Write('o ',ContVocales[4],' ');
  For i:=1 To ContVocales[4] Do
    Begin
      Write('*');
    End;

  Writeln(' ');

  Write('u ',ContVocales[5],' ');
  For i:=1 To ContVocales[5] Do
    Begin
      Write('*');
    End;

  Readkey()
End.


Escriba un programa que, dado una cadena de caracteres conformada por
varias palabras, indique la cantidad de veces que se repite cada vocal y lo
represente en un histograma. Ejemplo
El la cadena “ La casa de los espiritus es una obra de Isabel Allende”, la
salida sería
a 7 *******
e 6 ******
i 3 ***
o 1 *
u 2 **