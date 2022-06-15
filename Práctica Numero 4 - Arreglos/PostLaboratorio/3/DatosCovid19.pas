
Program DatosCovid19;

Uses Crt;

Const 
  Generos: array[1..2] Of string[7] = ('Hombres','mujeres');
  Estados: array[1..23] Of string[16] = ('Amazonas','Anzoategui','Apure','Aragua','Barinas','Bolivar','Carabobo','Cojedes','Delta Amacuro',{'Distrito Capital',}'Falcon','Guarico','Lara','Merida','Miranda','Monagas','Nueva Esparta','Portuguesa','Sucre','Tachira','Trujillo','Vargas','Yaracuy','Zulia');
  meses: array[1..12] Of string[10] = ('enero','febrero','marzo','abril','mayo','junio','julio','agosto','septiempre','octubre','noviembre','diciembre');

Var 
  CASOS: Array[1..23,1..12,1..2] Of integer;
  ContagioM,ContagioH,EstadoMayor,i,j,k : Integer;
Begin

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


  For i:=1 To 5 Do
    //1-23
    Begin
      For j := 1 To 12 Do
        //1-12
        Begin
          For k := 1 To 2 Do
            Begin
              Writeln('Ingrese la cantidad de ',Generos[k],' que se han reportado con COVID-19 en el mes de ',meses[j],' del estado ',Estados[i]);
              Readln(CASOS[i,j,k]);
            End;
        End;
    End;








End.


Un arreglo tridimensional contiene la cantidad de hombres y mujeres que se
han reportado con COVID-19 , durante los 12 meses del año, en cada uno de
los 23 estados del país. Donde CASOS [I, J, K] representa la cantidad de casos
que se reportaron en el estado I, el mes J, de sexo K. Encontrar
a) Cantidad de mujeres contagiados en cada estado.
c) Cantidad de hombres contagiadas durante un mes dado.
b) El estado con mayor número de contagio.  5 ptos