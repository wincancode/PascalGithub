
Program Espiral;

Uses Crt;

Var 
  {Larriba,Labajo,Lderecha,Lizquierda: Los Limites (L) de cada lado del arreglo.
  i,j: Contadores
  M,N: Filas y columnas del arreglo
  Sentido: Si se desea Horario o AntiHorario}

  Arreglo: Array[1..10,1..10] Of integer;
  M,N,i,j,LArriba,LAbajo,Lderecha,Lizquierda,Contador,Sentido: Integer;
Begin

  Writeln('Ingrese las filas y columnas de la matriz a rellenar.');
  Readln(M,N);
  Writeln('Ingrese la forma en la que se desea recorrer la matriz.');
  Writeln('1: Sentido Horario ; 2: Sentido Anti-Horario');
  Readln(Sentido);

  //Se limpia el arreglo.
  For i:=1 To M Do
    Begin
      For j := 1 To N Do
        Begin
          Arreglo[i,j] := 0;
        End;
    End;

  //Se inicializan las variables necesarias.
  Contador := 0;
  LArriba := 1;
  LAbajo := M;
  Lderecha := N;
  Lizquierda := 1;
  i := 1;
  j := 1;

  //Se realiza el bucle en un sentido u otro segun se ha elegido.
  Case Sentido Of 
    1:
       Begin
         While Contador < (M*N) Do
           Begin

             For j:=Lizquierda To Lderecha Do
               Begin
                 Contador := contador+1;
                 Arreglo[i,j] := contador;
               End;

             contador := contador-1;

             For i:= Larriba To Labajo Do
               Begin
                 Contador := contador+1;
                 Arreglo[i,j] := contador;
               End;

             contador := contador-1;

             For j:=Lderecha Downto Lizquierda Do
               Begin
                 Contador := contador+1;
                 Arreglo[i,j] := contador;
               End;

             contador := contador - 1;

             For i:= Labajo Downto Larriba+1 Do
               Begin
                 Contador := contador+1;
                 Arreglo[i,j] := contador;
               End;

             //Se estrechan los limites para que el siguiente recorrido continue con el patron de espiral/caracol
             LArriba := Larriba+1;
             LAbajo := LAbajo-1;
             Lderecha := Lderecha-1;
             Lizquierda := Lizquierda+1;
           End;
       End;
    2:
       Begin
         While Contador < (M*N) Do
           Begin


             For j:=Lderecha Downto Lizquierda Do
               Begin
                 Contador := contador + 1;
                 Arreglo[i,j] := contador;
               End;

             contador := contador-1;

             For i:= Larriba To Labajo Do
               Begin
                 Contador := contador+1;
                 Arreglo[i,j] := contador;
               End;

             contador := contador-1;

             For j:=Lizquierda To Lderecha Do
               Begin
                 Contador := contador+1;
                 Arreglo[i,j] := contador;
               End;

             contador := contador - 1;

             For i:= Labajo Downto Larriba+1 Do
               Begin
                 Contador := contador+1;
                 Arreglo[i,j] := contador;
               End;


             LArriba := Larriba+1;
             LAbajo := LAbajo-1;
             Lderecha := Lderecha-1;
             Lizquierda := Lizquierda+1;
           End;

       End;
  End;

  //Se muestra el arreglo en pantalla
  For i:=1 To M Do
    Begin
      For j := 1 To N Do
        Begin
          Write(Arreglo[i,j],'    ');
        End;
      Writeln('');
    End;


End.
