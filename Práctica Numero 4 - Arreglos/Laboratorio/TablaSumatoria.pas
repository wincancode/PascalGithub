
Program TablaSumatoria;

Uses Crt;

Var 
  M,N,Num,i,J: Integer;
  Tabla: Array [1..11,1..11] Of integer;
Begin
  Writeln('Por favor ingrese la cantidad de filas y columnas que desea utilizar, en ese orden. No pueden superar las 10 en cada una.');
  Readln(M,N);
  If (N>10) Or (M>10) Then
    Writeln('Usted ha ingresado una cantidad superior a 10')
  Else
    Begin


      For i:=1 To M Do
        Begin
          For j:=1 To N Do
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




      For i:=1 To M Do
        Begin
          For j:=1 To N Do
            Begin
              Tabla[i,M+1] := Tabla[i,M+1] + Tabla[i,j];
              Writeln('???',tabla[i,M+1]);
            End;
        End;


      For i:=1 To M Do
        Begin
          For j:=1 To N Do
            Begin
              Tabla[N+1,j] := Tabla[N+1,j] + Tabla [i,j];
              Writeln('!!!',Tabla[N+1,j]);
            End;
        End;

      For i:=1 To M Do
        Begin
          For j:=1 To N Do
            Begin
              Tabla[N+1,M+1] := Tabla[N+1,M+1] + Tabla[j,M+1];
              Tabla[N+1,M+1] := Tabla[N+1,M+1] + Tabla[N+1,i];
              //   Writeln(Tabla[N+1,M+1]);
            End;
        End;

      Writeln(Tabla[N+1,M+1]);


    End;


  Readkey();
End.
