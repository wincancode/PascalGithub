
Program EditorDeTexto;

Uses Crt;

Var 
  Texto,subcadena,CadenaAuxiliar: String;
  i,j,k,Seleccion,posicion: integer;
  OtroTexto: boolean;
  Posiciones: Array[1..10] Of integer;
Begin
  clrscr;
  OtroTexto := True;

  Repeat

    If OtroTexto = true Then
      Begin
        Writeln('Introduzca el texto que desea editar');
        Readln(Texto);
        OtroTexto := false;
      End;
    Writeln(' ');
    Writeln(' ');
    Writeln('seleccione lo que desea realizar.');
    Writeln('1. Determinar la longitud del texto.');
    Writeln('2. Borrar una subcadena del texto.');
    Writeln('3. Localizar una cadena dada en el texto.');
    Writeln('4. Insertar una subcadena en una posicion especifica del texto.');
    Writeln('5. Sustituir una cadena por otra dada.');
    Writeln('6. Convertir la cadena ingresada a mayusculas o minusculas');
    Writeln('7. Ingresar otro texto.');
    Writeln('8. Salir del editor.');
    Readln(Seleccion);

    Writeln(' ');

    //Se inicializan variables que se van a usar en la mayoria de opciones.

    Subcadena := '';
    j := 0;
    Posicion := 0;

    Case Seleccion Of 
      1: Writeln('La longitud del texto es de ',length(Texto),' caracteres');


      2: //Se elimina la subcadena segun su posicion y su longitud.
         Begin
           Writeln('Ingrese la subcadena que quiere borrar');
           Readln(Subcadena);
           Repeat
             Delete (Texto,pos(subcadena,texto),length(Subcadena));
           Until (Pos(Subcadena,Texto) = 0);
           Writeln('El texto modificado es: ');
           Writeln('"',Texto,'"');
         End;
      3:
         Begin
           //Se inicializa el arreglo que va a contener las posiciones de la cadena a localizar. 
           For i:=1 To 10 Do
             Posiciones[i] := 0;

           CadenaAuxiliar := Texto;
           Writeln('ingrese la cadena que quiere localizar.');
           Readln(Subcadena);

           //Se busca la subcadena, se guarda su posicion y se reemplaza una parte por un asterisco para que no se encuentre mas veces.
           While Pos(Subcadena,CadenaAuxiliar) <> 0 Do
             Begin
               j := j+1;
               Posiciones[j] := pos(Subcadena,CadenaAuxiliar);
               Delete(CadenaAuxiliar,pos(Subcadena,CadenaAuxiliar),1);
               Insert('*',CadenaAuxiliar,Posiciones[j]);
             End;


           If j = 0 Then
             Writeln('La cadena "',Subcadena,'" No se encuentra en el texto.')
           Else
             Begin

               Writeln('La cadena "',Subcadena,'" Se encontro un total de ',j,' veces en el texto en la(s) posicion(es): ');

               For i:= 1 To j Do
                 Write(Posiciones[i],', ');
               Writeln('respectivamente. ');

               Writeln(' ');
               j := 1;

               //Agregado para mostrar el texto con la subcadena que se quiere encontrar resaltada en color.
               For i:=1 To length(Texto) Do
                 Begin
                   If i = Posiciones[j] Then
                     Begin
                       Textcolor(green);
                       j := j+1;
                       k := length(Subcadena);
                     End;
                   If k=0 Then
                     textcolor(white)
                   Else
                     k := k-1;
                   Write(Texto[i]);
                 End;
             End;

           textcolor(White);

         End;
      4:
         Begin
           Writeln('Ingrese la cadena que quiere ingresar y la posicion del texto en la que la desea.');
           Readln(Subcadena,Posicion);
           Insert (Subcadena,Texto,Posicion);
           Writeln('El texto modificado es:');
           Writeln('"',Texto,'"');
         End;
      5:
         Begin
           Writeln('Ingrese la cadena que quiere sustituir.');
           Readln(Subcadena);
           Writeln('Ingrese la cadena por la cual la desea reemplazar.');
           Readln(CadenaAuxiliar);

           //Se busca la posicion de la cadena a sustituir, se elimina y se inserta la cadena que la sustituye en la misma posicion.
           While Pos(Subcadena,texto) <> 0 Do
             Begin
               posicion := pos(Subcadena,texto);
               Delete(Texto,Posicion,length(subcadena));
               Insert(CadenaAuxiliar,texto,Posicion);
             End;

           Writeln('El texto modificado es:');
           Writeln('"',Texto,'"');

         End;
      6:
         Begin
           Writeln('Ingrese si desea convertir la cadena a mayusculas o minusculas');
           Writeln('1: Mayusculas; 2: Minusculas');
           Readln(Seleccion);
           Case Seleccion Of 
             1: Texto := UpCase(Texto);
             2: Texto := LowerCase(Texto);
           End;
           Writeln('El texto modificado es:');
           Writeln('"',texto,'"');
         End;
      7: OtroTexto := True;
    End;


  Until seleccion = 8;

  Writeln('Gracias por utilizar el programa.');
  Readkey();
End.
