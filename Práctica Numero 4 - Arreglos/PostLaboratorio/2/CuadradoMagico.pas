
Program CuadradoMagico;

Uses Crt;

Var 
  //Auxi,Auxj: Variables que van a guardar la posicion del numero ingresado en el cuadrado magico.
  Matriz: Array[1..5,1..5] Of integer;
  contador,i,j,N,auxi,auxj: Integer;
Begin

  Writeln('Ingrese el tamanio que desea para el cuadrado magico');
  Readln(N);

  //Se limpia el arreglo.
  For i:=1 To N Do
    Begin
      For j:=1 To N Do
        Begin
          Matriz[i,j] := 0;
        End;
    End;

  //Se inicializan las variables necesarias.
  auxi := 0;
  auxj := 0;
  j := N Div 2 + 1;
  i := 1;

  For contador:=1 To N*N Do
    Begin

      //Si la posicion en la que se va a asignar el numero ya esta "Ocupada", se cambian las coordenadas a las de la fila debajo de la ultima asignacion
      If Matriz[i,j] <> 0 Then
        Begin
          i := Auxi+1;
          j := auxj;
        End;

      Matriz[i,j] := contador;

      //se guarda la posicion del numero recien asignado y se asigna la posicion del siguiente a colocar.
      auxi := i;
      auxj := j;
      i := i-1;
      j := j+1;

      //Si se sobrepasa alguno de los limites de la matriz se devuelve al lado contrario.
      If (i=0) Then
        i := N;
      If (j>N) Then
        j := 1;

    End;

  //Se muestra el cuadrado magico en pantalla.
  For i:=1 To N Do
    Begin
      For j:=1 To N Do
        Begin
          Write(Matriz[i,j],' ');
        End;
      Writeln(' ');
    End;

  Readkey();

End.
