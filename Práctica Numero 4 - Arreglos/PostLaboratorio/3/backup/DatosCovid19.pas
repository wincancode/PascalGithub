
Program DatosCovid19;

Uses Crt;

Const 
  //Se crean constantes con los generos, estados del pais y meses del anio para mejor escritura en pantalla. 
  Generos: array[1..2] Of string[7] = ('Hombres','mujeres');
  //Se denota que 1: Hombres y 2: Mujeres de esta forma.
  Estados: array[1..23] Of string[16] = ('Amazonas','Anzoategui','Apure','Aragua','Barinas','Bolivar','Carabobo','Cojedes','Delta Amacuro','Falcon','Guarico','Lara','Merida','Miranda','Monagas','Nueva Esparta','Portuguesa','Sucre','Tachira','Trujillo','Vargas','Yaracuy','Zulia');
  meses: array[1..12] Of string[10] = ('enero','febrero','marzo','abril','mayo','junio','julio','agosto','septiempre','octubre','noviembre','diciembre');

Var 

  {CASOS: Arreglo tridimensional donde se encuentran la cantidad de casos ordenados por estado del pais, mes del anio y genero.
   ContagiosM: Los contagios de mujeres por estado
   ContagiosH: Los contagios de hombres en un estado dado
   EstadoMayor: El estado con mayor numero de contagios
   CasosEstadoMay: Los casos por estado del estado mayor para lograr comparar entre ellos. }
  CASOS: Array[1..23,1..12,1..2] Of integer;
  ContagiosM: Array [1..23] Of integer;
  ContagioH,EstadoMayor,MesHombres,CasosEstado,CasosEstadoMay,i,j,k : Integer;
Begin

  Clrscr;
  //Se inicializan los arreglos y variables
  For i:=1 To 23 Do
    Begin
      For j := 1 To 12 Do
        Begin
          For k := 1 To 2 Do
            Begin
              CASOS[i,j,k] := 0;
            End;
        End;
    End;

  For i:=1 To 23 Do
    Begin
      ContagiosM[i] := 0;
    End;

  ContagioH := 0;
  CasosEstadoMay := -1;
  CasosEstado := 0;

  //se piden los datos al usuario.
  For i:=1 To 23 Do
    Begin
      For j := 1 To 12 Do
        Begin
          For k := 1 To 2 Do
            Begin
              Writeln('Ingrese la cantidad de ',Generos[k],' que se han reportado con COVID-19 en el mes de ',meses[j],' del estado ',Estados[i]);
              Readln(CASOS[i,j,k]);
            End;
        End;
    End;

  clrscr;
  Writeln('De que mes desea obtener la cantidad de hombres contagiados?');
  For j:=1 To 12 Do
    Begin
      Writeln(j,'.',Meses[j]);
    End;
  Readln(MesHombres);


  //Se obtienen la cantidad de mujeres contagiadas en cada estado.
  For i:=1 To 23 Do
    Begin
      For j := 1 To 12 Do
        Begin
          ContagiosM[i] := ContagiosM[i]+CASOS[i,j,2];
        End;
    End;

  //Se obtienen la cantidad de hombres contagiados en un mes dado
  For i:=1 To 23 Do
    Begin
      ContagioH := ContagioH + casos[i,MesHombres,1];
    End;

  //Se obtiene cual es el estado con mayor numero de contagios.
  For i:= 1 To 23 Do
    Begin
      CasosEstado := 0;
      For j:=1 To 12 Do
        Begin
          For k:=1 To 2 Do
            Begin
              CasosEstado := CasosEstado + CASOS[i,j,k];
            End;
        End;
      If CasosEstado > CasosEstadoMay Then
        Begin
          EstadoMayor := i;
          CasosEstadoMay := CasosEstado;
        End;

    End;

  clrscr;

  //Se muestran los datos en pantalla.
  Writeln('Esta es la cantidad de mujeres contagiadas en cada estado.');
  For i:=1 To 23 Do
    Begin
      Writeln(estados[i],': ',ContagiosM[i]);
    End;

  Writeln(' ');

  Writeln('Cantidad de hombres contagiados en el mes de ',Meses[MesHombres],': ',ContagioH);

  Writeln('El estado con mayor numero de contagios es: ',Estados[EstadoMayor]);

  Readkey();

End.
