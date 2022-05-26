Program EmpresaDeFumigacion;

Uses Crt;

Const
  //Se crean constantes para cada tipo de fumigacion
  Tipo1 = 10;
  Tipo2 = 15;
  Tipo3 = 20;
  Tipo4 = 30;
  DscArea = 0.05;  //5%
  DscPrecio = 0.1; //10%

Var
  Tipo: Char;
  Precio, Area: Real;
  Cost_Hect: Integer;
  Nombre: String;

Begin

  writeln('Introduzca el nombre del que solicita el servicio');
  readln(Nombre);
  writeln('Introduzca el tipo de fumigacion que se quiere realizar');
  writeln('1: Fumigacion contra malas hierbas');
  writeln('2: Fumigacion contra langostas');
  writeln('3: Fumigacion contra gusanos');
  writeln('4: Fumigacion contra todo lo anterior');
  readln(Tipo);
  writeln('Introduzca la cantidad de hectareas que quiere tratar con la fumigacion');
  readln(area);

  Case Tipo Of
    '1': Cost_Hect := Tipo1;
    '2': Cost_Hect := Tipo2;
    '3': Cost_Hect := Tipo3;
    '4': Cost_Hect := Tipo4;
  End;

  Precio := Area * Cost_Hect;

  //Se verifican los casos para aplicar cada descuento, colocados segun prioridad
  If Area > 1000 Then
    Precio := Precio - (Precio * DscArea);

  If Precio > 3000 Then
    Precio := Precio - ((Precio-3000) * DscPrecio);

  //Se imprime el resultado
  Writeln();
  Writeln('Servicio para el granjero ', Nombre);
  writeln('Total a pagar: $', Precio:0:2);

  readkey();

End.
