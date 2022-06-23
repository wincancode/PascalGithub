
Program CadenaDeCaracteres;

Uses Crt;

Var 
  Texto,CadenaAuxiliar,Palabra,Cadena4Let: String[50];
  Caract: char;
  i,j,posicion: integer;

Begin

  Writeln('Ingrese una cadena de caracteres formada por varias palabras.');
  Readln(Texto);
  Writeln('Ingrese un caracter.');
  Readln(caract);


  Writeln('Las palabras que contienen el caracter ',caract,' son: ');

  CadenaAuxiliar := Texto;

  While Pos(Caract,CadenaAuxiliar) <> 0 Do
    Begin
      palabra := '';

      Posicion := pos(caract,CadenaAuxiliar);

      While (CadenaAuxiliar[Posicion-1] <> ' ') And (Posicion <> 1) Do
        Begin
          Posicion := Posicion-1;
        End;


      Repeat
        Palabra := palabra + CadenaAuxiliar[Posicion];
        delete(CadenaAuxiliar,Posicion,1);
        insert('*',CadenaAuxiliar,Posicion);
        Posicion := Posicion+1;
      Until (CadenaAuxiliar[Posicion] = ' ') Or (Posicion = Length(Texto)+1);

      Write(Palabra);

      If Pos(Caract,CadenaAuxiliar) <> 0 Then
        Write(', ');
    End;

  Writeln;
  Writeln('Las palabras de cuatro letras son: ');
  CadenaAuxiliar := Texto;

  Cadena4Let := '';






End.


2. Escribir un programa que lea una de cadena de caracteres conformada por varias
palabras e imprima

 Muestre, separada por coma, las palabras que contenga un carácter dado
por teclado
 En otra cadena, concatene las palabras de cuatro letras y muestre cuantas
palabras son.
 Sustituya cada palabra de cuatro letras por una cadena de cuatro
asteriscos e imprima la nueva cadena.

EJEMPLO de las salidas del ejercicio 2 . Dada la cadena

“en la casa de la mama de Elena hay muchos murciélagos y lagartijas”
(a) Si el carácter dado es la “e” la salida sería  en, de, Elena // fíjese que no se
incluye murciélago porque el carácter “é” que contiene la tílde es distinto a “e” y en
el caso de la palabra Elena se incluye por que contiene una “e” y no por la “E”, pues
son caracteres distintos.
(b) La salida sería “casa mama” 2 palabras
(c ) “en la **** de la **** de Elena hay muchos murciélagos y lagartijas”