  program PromedioEstudiante;
  Uses Crt,sysutils;

  //Se crea un tipo de dato llamado 'Cadenita' que va a ser usada para las variables relacionadas a nombres.
  Type
    Cadenita=String[15];
  Var
    Nombre1,Nombre2,Apellido1,Apellido2:Cadenita;
    Genero,Nacionalidad,Revision:Char;
    Genero_Largo,Cedula:String[9];
    Calificacion1,Calificacion2,Calificacion3:byte;
    Promedio:Real;

    //Se utiliza el tipo de dato 'word' para almacenar posteriormente la fecha del sistema.
    Dia,mes,anio:Word;


  begin
    //Se piden los datos al usuario, pidiendo el nombre de uno en uno y mostrando de nuevo para dar la sensacion de escritura continua.
    Writeln('Por favor introduzca el primer nombre del estudiante.');
    Readln(Nombre1);
    Clrscr;
    Writeln('Por favor introduzca el segundo nombre del estudiante.');
    Write(Nombre1,' ');
    Readln(Nombre2);

    Clrscr;
    Writeln('Por favor introduzca el primer apellido del estudiante.');
    Write(Nombre1,' ',Nombre2,' ');
    Readln(Apellido1);
    Clrscr;
    Writeln('Por favor introduzca el segundo apellido del estudiante.');
    Write(Nombre1,' ',Nombre2,' ',Apellido1,' ');
    Readln(Apellido2);

    //Se pide la cedula de identidad con un pequenio menu que permitira reconocer la nacionalidad de la persona.
    Clrscr;
    Writeln('Por favor introduzca el numero de su cedula de identidad.');
    Readln(cedula);
    Clrscr;
    Writeln('Seleccione si el estudiante es venezolano o nacido en un pais extranjero al ingresar uno de los dos numeros.');
    Writeln('1: Venezolano, 2: Extranjero.');
    Readln(Revision);
    case Revision of
      '1':Nacionalidad:='V' ;
      '2':Nacionalidad:='E' ;
    end;

    //Se pide el genero a traves de un menu, para poder asignar un genero largo y otro corto (La palabra completa y un caracter)
    Clrscr;
    Writeln('Por favor seleccione el genero con el que se identifica.');
    Writeln('1:Masculino, 2:Femenino.');
    Readln(Revision);
    case Revision of
      '1': Begin
                Genero:='M'; Genero_Largo:='Masculino';
           end;
      '2': Begin
                Genero:='F'; Genero_Largo:='Femenino';
           end;
    end;

    //Se piden las calificaciones y se calcula el promedio
    Clrscr;
    Writeln('Por favor introduzca las tres notas obtenidas por el estudiante, sin decimales.');
    Readln(Calificacion1,Calificacion2,Calificacion3);

    Promedio:=(Calificacion1+Calificacion2+Calificacion3)/3;

    //Se muestra en pantalla el reporte de notas con todos los datos necesarios.
    //Notese que se pide la fecha actual al sistema dentro de tres variables para posteriormente acomodarlas en el formato dd/mm/aaaa
    Clrscr;
    DeCodeDate(Date,Anio,Mes,Dia);
    Writeln(Format ('UCAB                                         %d/%d/%d ',[Dia,Mes,Anio]));
    Writeln('                    Reporte de notas');
    Writeln('');
    Writeln('Bachiller: ',Nombre1,'    ',Nombre2,'    ',Apellido1,'    ',Apellido2);
    Writeln('Cedula: ',Nacionalidad,Cedula,'  Genero: ',Genero,' ',Genero_Largo);
    Writeln('Calificacion1: ',Calificacion1,'  Calificacion2: ',Calificacion2,'  Calificacion3: ',Calificacion3);
    Writeln('');
    Writeln('Promedio final de notas: ',Promedio:0:2,' puntos.');
    Readkey();
  end.

