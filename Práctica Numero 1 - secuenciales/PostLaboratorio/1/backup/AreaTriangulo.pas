program AreaTriangulo;
Uses Crt;

Var
  A,B,C,Semiperimetro,Area:Real;

begin
  //Se piden la longitud de cada lado al usuario y se valida si su respuesta es diferente a cero o positiva.
  Repeat
     Clrscr;
     Writeln('Por favor introduzca la longitud de cada lado del triangulo, con cuantos decimales se desee.');
     Writeln('Asegurese de no ingresar numeros negativos o iguales a cero. Se asume ademas que las cantidades se encuentran en la misma unidad de medida');
     Readln(A,B,C);
     if (A<=0) or (B<=0) or (C<=0) then
           Begin
                Clrscr;
                Writeln('Alguno que los valores que ha introducido es igual o menor que cero; presione cualquier tecla e intente de nuevo');
                Readkey();
           end;

     Until not((A<=0) or (B<=0) or (C<=0));

  {Si se cumplen las condiciones, entonces se procede a calcular el Area del triangulo con su formula correspondiente
  para posteriormente mostrarse en pantalla}
  //Semiperimetro:=(A+B+C)/2;
  //Area:=Sqrt(semiperimetro*(semiperimetro-a)*(semiperimetro-b)*(semiperimetro-c));

  Area:=Sqrt(((A+B+C)/2)*(((A+B+C)/2)-a)*(((A+B+C)/2)-b)*(((A+B+C)/2)-c));
  Clrscr;
  Writeln('El area del triangulo es igual a: ',Area:0:2,' unidades cuadradas.');
  Readkey();
end.

