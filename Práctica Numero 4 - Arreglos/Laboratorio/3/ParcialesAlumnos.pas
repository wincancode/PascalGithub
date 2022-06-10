
Program ParcialesAlumnos;

Uses Crt;

Var 
  Alumnos: Array [1..10] Of String [30];
  Cedulas: Array [1..10] Of string [8];
  calificaciones: Array [1..10,1..3] Of Integer;
  Aux_Prom, Promedio: Array [1..10] Of Real;
  Ordenamiento: Array [1..10] Of Real;
  Sumatoria, i,j: Integer;
  Mayor, Menor, orden : Boolean;
  Aux : integer;
Begin

  //Se piden los datos de los alumnos.
  For i:=1 To 10 Do
    Begin
      Writeln('Introduzca la cedula del estudiante numero ',i);
      Readln(Cedulas[i]);
      Writeln('Introduzca el nombre del estudiante numero ',i);
      Readln(Alumnos[i]);
      For j:=1 To 3 Do
        Begin
          Writeln('Introduzca la nota del parcial numero ',j,' del estudiante numero ',i);
          Readln(calificaciones[i,j]);
        End;
    End;

  //Se calcula el promedio
  For i := 1 To 10 Do
    Begin
      Sumatoria := 0;
      For j:= 1 To 3 Do
        Begin
          Sumatoria := Sumatoria + calificaciones[i,j];
        End;
      Promedio[i] := Sumatoria/3;
    End;

  //Se revisan los estudiantes de menor a mayor promedio
  //Se copia el arreglo en uno nuevo 
  For i:=1 To 10 Do
    Begin
      Aux_Prom[i] := Promedio[i];
    End;

  //Se ordena de menor a mayor.
  For i:=0 To 9 Do
    Begin
      While Aux_Prom[i] > 0 Do
        Begin
          aux := 0;
          For j:=1 To 10 Do
            Begin
              If (Promedio[i] < Aux_Prom[i]) Then
                  Aux := aux+1;
              If Aux=10-i Then
                  Ordenamiento[i]:=i+1; 
            End;
        End;
    End;

  //Se escriben los nombres
  For i:=1 to 10 do
  begin
    Writeln(Alumnos[Ordenamiento[i]]);
  end;
  Readkey();
End.





{3. Escriba un programa que lea la cédula, nombre y las calificaciones de los tres
parciales de los alumnos de Algoritmos y Programación I de la UCAB, las almacene
en un arreglo y luego muestre en pantalla el nombre de los estudiantes ordenados
según el promedio. Para la corrida tome una muestra solo de 10 alumnos.}
