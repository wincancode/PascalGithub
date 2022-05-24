

Program NumerosPerf_Y_NumerosMalvados;

Uses Crt;

Var 
  //AuxBin,AuxBin2: Auxiliares para emular la obtencion del numero binario para verificar los numeros malvados; AuxP: Auxiliar para verificar los numeros perfectos; PerfOmalv: Contador de perfectos o malvados; MenorPM, MayorPM: Mayore y menor de perfectos o malvados; i: Contador general.
  Num,AuxBin,AuxBin2,AuxP,PerfoMalv,MenorPM,MayorPM,i:  longint;

  //PPM: Promedio de los perfectos o malvados
  PPM:  Real;

  Perf,Malv : Boolean;
Begin

  PerfoMalv := 0;
  MayorPM := 0;
  MenorPM := 0;
  PPM := 0;
  AuxP := 0;
  AuxBin2 := 0;

  Writeln('Este programa calcula el promedio, el mayor, y el menor de los numeros perfectos y Malvados de una secuencia numerica. ');
  Writeln('Ingrese una secuencia de numeros, utilizando el cero (0) para terminarla.');
  Readln(Num);



  While Num<>0 Do
    Begin
      Perf := false;
      Malv := false;

      If PerfYMalv=0 Then
        MenorPM := Num+1;


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
        perf := true;

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
        Malv := True;


      If (Malv=true) Or (Perf=true) Then
        Begin
          If Num>MayorPM Then
            MayorPM := Num;
          If Num<MenorPM Then
            MenorPM := Num;
          PPM := PPM+Num;
          PerfoMalv := PerfoMalv+1;
        End;
      Writeln('Ingrese otro numero.');
      Readln(Num);
    End;


  If PerfYMalv<>0 Then
    Begin
      PPM := PPM/PerfoMalv;
      Writeln('Numeros Perfectos o Malvados: ');
      Writeln('El mayor es: ', MayorPM);
      Writeln('El menor es: ', MenorPM);
      Writeln('Y su promedio fue de: ',PPM:0:2);
    End
  Else
    Begin
      Writeln('No hubieron numeros perfectos y malvados al mismo tiempo.')
    End;


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
