
Program EcuacionCuadratica;

Uses crt;

Var 
  a,b,c,d,J,Q,Raiz1,Raiz2: real;
  //a,b,c: Terminos de la ecuacion cuadratica; d: Discriminante; j,Q: Parte real e imaginaria de las raices complejas
Begin

  //Se piden los datos de entrada al usuario
  Writeln('Este programa calcula las raices de una ecuacion cuadratica de la forma "ax^2 + bx + c = 0');
  Writeln('Para poderlas calcular, introduzca los terminos "a", "b" y "c", en ese orden especifico');
  Readln(a,b,c);

  // Se crea un condicional para cada posibilidad de las variables de la ecuacion cuadratica.
  If (a=0) And (b=0) Then
    Writeln('La ecuacion es degenerada')
  Else
    Begin
      If (a=0) And (b<>0) Then
        Begin
          Raiz1 := -c/b;
          Writeln('Existe una raiz unica: ',Raiz1:0:2);
        End
      Else
        Begin
          d := b*b - 4*a*c;
          If (d>0) Then
            Begin
              Raiz1 := (-b+sqrt(d))/(2*a);
              Raiz2 := (-b-sqrt(d))/(2*a);
              Writeln('Existen dos raices reales: ',Raiz1:0:2,' y ',Raiz2:0:2);
            End
          Else
            Begin
              If (d<0) Then
                Begin
                  //Aquí se utiliza la "i" para marcar la parte imaginaria del resultado
                  J := -b/(2*a);
                  Q := sqrt(abs(b*b - 4*a*c))/(2*a);

                  //Se multiplica Q por -1 si es negativo, para volverlo positivo y evitar la multiplicacion de signos
                  If Q<0 Then
                    Q := Q*-1;

                  Writeln('Existen dos raices complejas: (',J:0:2,')+(',Q:0:2,'i) y (',J:0:2,')-(',Q:0:2,'i)');
                End
              Else
                Begin
                  Raiz1 := -b/(2*a);
                  Writeln('Existe una raiz unica: ',Raiz1:0:2);
                End;
            End;
        End;
    End;
  Readkey();
End.
