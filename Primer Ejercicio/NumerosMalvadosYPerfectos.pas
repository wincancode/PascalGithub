

Program NumerosPerf_Y_NumerosMalvados;

Uses Crt;

Var 
  //AuxBin,AuxBin2: Auxiliares para emular la obtencion del numero binario para verificar los numeros malvados; AuxP: Auxiliar para verificar los numeros perfectos; Perf,Malv: Contador de perfectos y malvados; MayorP,MayorM,MenorP,MenorM: Mayores y menores de perfectos y malvados; i: Contador general.
  Num,AuxBin,AuxBin2,AuxP,Perf,Malv,
  MayorP,MayorM,MenorP,MenorM,i:  Integer;

  //PP: Promedio de Perfectos; PM: Promedio de malvados
  PP,PM:  Real;
Begin

  Perf := 0;Claro que tengo la ca
  Malv := 0;
  AuxP := 0;
  PM := 0;
  PP := 0; 
  AuxBin2 := 0;

  MayorM  := 0;
  MayorP := 0;

  Writeln('Este programa calcula el promedio, el mayor, y el menor de los numeros perfectos y Malvados de una secuencia numerica. ');
  Writeln('Ingrese una secuencia de numeros, utilizando el cero (0) para terminarla.');
  Readln(Num);



  While Num<>0 Do
    Begin

      If Perf=0 Then
        MenorP := Num+1;
      If Malv=0 Then
        MenorM := Num+1;

      //Se verifican los numeros Perfectos
      AuxP := 0;
      For i := 1 To Num-1 Do
        Begin
          If Num Mod i = 0 Then
            Begin
              AuxP := AuxP + i;
            End;
        End;

      //Se cuentan y acumulan los Perfectos, y se verifica si hay un nuevo mayor y menor;
      If AuxP = Num Then
        Begin
          Perf := Perf+1;
          PP := PP+Num;
          If Num > MayorP Then
            MayorP := Num;
          If Num < MenorP Then
            MenorP := Num;
        End;


      //Se verifican los numeros Malvados
      AuxBin := Num;
      i := 0;

      Repeat
        AuxBin2 := AuxBin Mod 2;
        AuxBin := AuxBin Div 2;
        If AuxBin2 <> 0 Then
          Begin
            i := i+1;
          End;
      Until (AuxBin=0);


      //Se cuentan y acumulan los Malvados, y se verifica si hay un nuevo mayor y menor;

      If i Mod 2 = 0 Then
        Begin
          Malv := Malv + 1;
          PM := PM+Num;
          If Num > MayorM Then
            MayorM := Num;
          If Num < MenorM Then
            MenorM := Num;

        End;

      Writeln('Ingrese otro numero.');
      Readln(Num);
    End;

  If Perf<>0 Then
    Begin
      PP := PP/Perf;
      Writeln('Numeros Perfectos: ');
      Writeln('El mayor es: ', MayorP);
      Writeln('El menor es: ', MenorP);
      Writeln('Y su promedio fue de: ',PP:0:2);
    End
  Else
    Writeln('No hubieron Numeros Perfectos');
  Writeln('---------------------------------');
  If Malv<>0 Then
    Begin
      PM := PM/Malv;
      Writeln('Numeros Malvados: ');
      Writeln('El mayor es: ', MayorM);
      Writeln('El menor es: ',MenorM);
      Writeln('Y su promedio fue de: ',PM:0:2);
    End
  Else
    Writeln('No hubieron Numeros Malvados');


  Readkey();

End.




{!1.- Dado una secuencia de números naturales, finalizada con un cero, construya un
algoritmo que determine : el mayor, el menor y el promedio de los números Perf y
a su vez Malv, según la definición dada a continuación.

Número perfecto: es todo número natural que es igual a la suma de sus divisores propios
(es decir, todos sus divisorees excepto el propio número). Por ejemplo, 6 es un número
perfecto ya que sus divisores propios son 1, 2, y 3 y se cumple que 1+2+3=6.

Número malvado: todo número natural cuya expresión en base 2 (binaria) contiene un
número par de unos. Por ejemplo el 12 y el 15 son números Malv ya que 12=1100
contiene dos(2) unos en su representación binaria y 15=1111 contiene cuatro(4) unos
en su representación binaria ( dos y cuatro son pares).

Nota : Para llevar un número natural a binario, hacer divisiones sucesivas entre 2 y tomar
el resto.
}
