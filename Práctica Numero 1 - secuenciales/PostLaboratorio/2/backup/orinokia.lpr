program Recibo_De_Pago;;
Uses Crt,Sysutils;

Var

{Se crean las variables para cada una de las operaciones necesarias en el programa. Algunas consideraciones:
   1.-Las cadenas/strings limitadas estan hechas para evitar desperdiciar memoria.
   2.-El numero de hijos se almacena en un byte al ser enteros y no necesitarse una cantidad muy grande de digitos
   3.-El genero es un caracter/char al solo necesitarse una letra para representarlo. Lo mismo sucede
   con la variable "revision", que sera utilizada por todo el programa como una confirmacion multiproposito para confirmar
   una decision de un menu}

  Cedula,genero_Largo:String[9];

  Direccion,Nombre:String[40];

  genero,Revision:Char;
  Dia_Ingreso,Mes_Ingreso,Mes_de_pago:String[2];

  Anio_Ingreso,anio_de_pago:string[4];

  numero_de_hijos:byte;

  Prima_por_hijos,Sueldo_Integral_Mensual,Descuento_ISLR,Neto_a_cobrar,
  sueldo_basico_mensual,prima_de_transporte,bono_de_alimentacion,ISLR:Real;

  Dia_generacion_recibo,Mes_Generacion_Recibo,Anio_Generacion_Recibo:Word;

begin

  //Se pide el nombre al usuario
  Writeln('Por favor introduzca el nombre del trabajador.');
  Readln(Nombre);

  //Se pide la direccion al usuario
  clrscr;
  Writeln('Por favor introduzca la direccion del trabajador.');
  Readln(Direccion);
  Clrscr;
  //Se pide la cedula de identidad al usuario.

  Writeln('Por favor introduzca el numero de la cedula de identidad del trabajador.');
  Readln(cedula);


  //Se crea un menu donde se pregunta al usuario su genero, tomando en cuenta toda posibilidad de mayuscula o minuscula de las
  //opciones disponibles

      Repeat

            Writeln('Por favor seleccione el genero con el que se identifica el trabajador.');
            Writeln('M:Masculino, F:Femenino.');
            Readln(Revision);

            case Revision of
              'M': Begin
                        Genero:='M'; Genero_Largo:='Masculino';
                   end;
              'F': Begin
                        Genero:='F'; Genero_Largo:='Femenino';
                   end;
              'm': Begin
                        Genero:='M'; Genero_Largo:='Masculino';
                   end;
              'f': Begin
                        Genero:='F'; Genero_Largo:='Femenino';
                   end;
              Else Begin

                       Writeln('Usted ha ingresado un caracter no valido; presione cualquier tecla e intente de nuevo.');
                       ReadKey();
                   end;

            end;
      Until (Genero='M') or (genero='F');

  //Se pide la fecha de ingreso al usuario, en el orden de dia, mes y anio.

  Writeln('Por favor introduzca la fecha de ingreso del trabajador.');
  Writeln('Primero el dia ');
  Readln(Dia_Ingreso);

  //Se revisa si el tamanio del dia es de un solo digito, y si lo es, se le agrega un '0' detras para tener el formato correcto de fecha
  If (length(Dia_Ingreso)=1) then
  Dia_ingreso:='0'+Dia_Ingreso;

  //Se pide el mes y se utiliza el comando gotoxy para crear un formato atractivo
  gotoxy(14,2);
  Write(', Ahora el mes');
  gotoxy(1,3);
  Write(dia_ingreso,'/');
  Readln(Mes_Ingreso);

  //Se hace lo mismo que con el dia para agregar el '0' detras de ser necesario.
  If (length(mes_Ingreso)=1) then
  mes_ingreso:='0'+mes_Ingreso;

  //Finalmente se pide el anio.
  gotoxy(28,2);
  Write(', y finalmente el anio en cuatro digitos.');
  gotoxy(4,3);
  Write(Mes_Ingreso,'/');
  Readln(Anio_Ingreso);

  //Al igual que con el anterior bloque de codigo, se pide la fecha del pago; primero el mes y despues el anio

  Writeln('Ahora ingrese la fecha del pago');
  Writeln('Primero el mes');
  gotoxy(1,3);
  Readln(Mes_de_pago);

  If (length(Mes_de_pago)=1) then
  Mes_de_pago:='0'+Mes_de_pago;

  gotoxy(15,2);
  Write(', y ahora el anio en cuatro digitos.');
  gotoxy(1,3);
  Write(Mes_de_pago,'/');
  Readln(anio_de_pago);

  //se le pide al usuario unos últimos datos

  Writeln('Por favor ingrese el numero de hijos que tiene el trabajador');
  Readln(numero_de_hijos);


  Writeln('Por favor ingrese el sueldo basico mensual del trabajador.');
  Readln(sueldo_basico_mensual);


  Writeln('Por favor ingrese la prima de transporte.');
  Readln(prima_de_transporte);


  Writeln('Por favor ingrese el bono de alimentacion.');
  Readln(bono_de_alimentacion);


  Writeln('Por favor ingrese el porcentaje de retencion del ISLR actual.');
  Writeln('ISLR: Impuesto Sobre La Renta.');
  Readln(ISLR);

  //Se empiezan a realizar los calculos correspondientes

  Prima_por_hijos:=numero_de_hijos*(sueldo_basico_mensual*0.5);
  Sueldo_Integral_Mensual:=sueldo_basico_mensual+Prima_por_hijos+prima_de_transporte;
  Descuento_ISLR:=ISLR*Sueldo_Integral_Mensual/100;
  Neto_a_cobrar:=Sueldo_Integral_Mensual+bono_de_alimentacion-Descuento_ISLR;

  {Se crea el formato para mostrar todos los datos necesarios en pantalla, usando el comando "Gotoxy" para ordenar correctamente
  el formato. Notese que se obtiene la fecha del sistema para mostrarla en un formato de dd/mm/aaaa}

  Decodedate(Now,Anio_Generacion_Recibo,Mes_Generacion_Recibo,Dia_generacion_recibo);
  Writeln('ORINOKIA CITY');

  //Seccion con fecha de generacion y la fecha correspondiente al pago
  Gotoxy(68,1); Write((Format('%d/%d/%d',[Dia_generacion_recibo,Mes_Generacion_Recibo,Anio_Generacion_Recibo])));

  Gotoxy(21,3); Write('Recibo de pago correspondiente al, ',Mes_de_pago,'/',anio_de_pago);

  //Seccion con los datos del trabajador
  Gotoxy(1,5);   Write('Cedula   : ',Cedula,'  Nombre: ',Nombre);
  Gotoxy(1,6);   Write('Direccion:',Direccion); Gotoxy(40,6); Write('Genero: ',genero,' ',genero_Largo);
  Gotoxy(1,7);   Write('Fecha de ingreso: ',Dia_Ingreso,'/',Mes_Ingreso,'/',Anio_Ingreso); Gotoxy(40,7); Write('Nro de hijos: ',numero_de_hijos);

  //Seccion correspondiente a las cantidades involucradas en el pago, ordenadas e identadas para mejor lectura
  Gotoxy(1,10);  Write('Sueldo basico mensual(Bs)'); Gotoxy(40,10);               writeln(': ',sueldo_basico_mensual:0:2);
  Writeln('Prima por hijos (Bs)');                   Gotoxy(40,11);               writeln(': ',Prima_por_hijos:0:2);
  Writeln('Prima por transporte (Bs)');              Gotoxy(40,12);               writeln(': ',prima_de_transporte:0:2);
  Writeln('Bono de alimentacion (Bs)');              Gotoxy(40,13);               Writeln(': ',bono_de_alimentacion:0:2);
  Writeln('Descuento por ISLR de ',ISLR:0:2,'%');    Gotoxy(40,14);               Writeln(': ',Descuento_ISLR:0:2);
                                                     Gotoxy(40,15);               Writeln('-------------');
  Writeln('Neto a cobrar');                          Gotoxy(40,16);               Writeln(': ',Neto_a_cobrar:0:2);
  Readkey();
end.

