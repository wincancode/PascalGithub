
Program TablaSumatoria;

Uses Crt;

Var 
  M,N,i,J: Integer;
  Tabla: Array [1..11,1..11] Of integer;
Begin
  Writeln('Por favor ingrese la cantidad de filas y columnas que desea utilizar, en ese orden. No pueden superar las 10 en cada una.');
  Readln(M,N);
  If (N>10) Or (M>10) Then
    Writeln('Usted ha ingresado una cantidad superior a 10')
  Else
    Begin


      For i:=1 To M+1 Do
        Begin
          For j:=1 To N+1 Do
            Begin
              Tabla[i,j] := 0;
            End;
        End;

      For i:=1 To M Do
        Begin
          For j:=1 To N Do
            Begin
              Writeln('Ingrese el numero correspondiente a la fila ',i,' de la columna ',j);
              Readln(Tabla[i,j]);
            End;
        End;



      //Suma de las filas
      For i:=1 To M Do
        Begin
          For j:=1 To N Do
            Begin
              Tabla[i,N+1] := Tabla[i,N+1] + Tabla[i,j];
            End;
        End;

      //Suma de columnas
      For i:=1 To M Do
        Begin
          For j:=1 To N Do
            Begin
              Tabla[M+1,j] := Tabla[M+1,j] + Tabla [i,j];
            End;
        End;


      //Suma de todos los elementos de la matriz
      For i := 1 To M Do
        Begin
          For j := 1 To N Do
            Begin
              Tabla[M+1,N+1] := Tabla[M+1,N+1] + Tabla[i,j];
            End;
        End;

      //Dibujar la tabla en pantalla
      For i:=1 To M+1 Do
        Begin
          For j:=1 To N+1 Do
            Begin
              Write(Tabla[i,j],'    ');
            End;
          Writeln('');
        End;
        
    End;
  Readkey();
End.
