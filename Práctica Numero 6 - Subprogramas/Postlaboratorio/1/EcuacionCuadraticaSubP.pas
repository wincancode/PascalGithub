
Program EcuacionCuadraticaSubP;

Uses Crt,math;

Var 
  a,b,c,d,J,Q,Raiz1,Raiz2: Real;
Function Discriminante(aa,bb,cc:Real): Real;
Begin
  Discriminante := Sqr(bb) - 4*aa*cc;
End;

//Caso a=0; b<>0
Function RaizUnica(aa,bb,cc:Real; tipo:integer): Real;
Begin
  Case tipo Of 
    1: RaizUnica := -cc/bb;
    2: Raiz1 := -bb/(2*aa);
  End;
End;

//Caso d>0
Procedure RaicesReales(aa,bb,dd:real; Var Rz1,Rz2:Real);
Begin
  Rz1 := (-bb+sqrt(dd))/(2*aa);
  Rz2 := (-bb-sqrt(dd))/(2*aa);
End;

//caso d<0 
Procedure RaicesImaginarias(aa,bb,dd:Real; Var JJ,QQ:Real);
Begin
  JJ := -bb/(2*aa);
  QQ := sqrt(abs(dd))/(2*aa);
End;

Begin

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
          Writeln('Existe una raiz unica: ',RaizUnica(a,b,c,1): 0: 2);
        End
      Else
        Begin
          d := discriminante(a,b,c);
          If (d>0) Then
            Begin
              RaicesReales(a,b,d,Raiz1,Raiz2);
              Writeln('Existen dos raices reales: ',Raiz1:0:2,' y ',Raiz2:0:2);
            End
          Else
            Begin
              If (d<0) Then
                Begin
                  //Aquí se utiliza la "i" para marcar la parte imaginaria del resultado

                  RaicesImaginarias(a,b,d,J,Q);

                  //Se multiplica Q por -1 si es negativo, para volverlo positivo y evitar la multiplicacion de signos
                  If Q<0 Then
                    Q := Q*-1;

                  Writeln('Existen dos raices complejas: (',J:0:2,')+(',Q:0:2,'i) y (',J:0:2,')-(',Q:0:2,'i)');
                End
              Else
                Begin
                  Writeln('Existe una raiz unica: ',RaizUnica(a,b,c,2): 0: 2);
                End;
            End;
        End;
    End;

  Readkey();


End.

1.- Elaborar un programa en Pascal que, usando subprogramas, realice el cálculo de
las raices en una ecuación cuadrática. Para ello debe pedir por teclado los valores de
a,b, y c que deben ser pasados como parámetros desde el programa principal a un
subprograma , realizar en el subprograma los cálculos de las raíces y devolver los
resultado obtenidos hacia el programa principal, en donde se deben visualizar. No se
deben solicitar los datos de entrada ni visualizar los resultados en los subprogramas,
todos los mensajes de entrada y salida de datos se deben hacer en el programa
principal
El cálculo del discriminante de la ecuación debe realizarse a través de una Function .
Para calcular las raíces de la ecuación cuadrática se usa la fórmula ax2 + bx + c -- 0 , teniendo en cuenta que

a- Si “a” es igual a 0 y “b” es igual a 0, imprimiremos un mensaje diciendo que la
“Ecuación es degenerada”.
b- Si “a” es igual a 0 y “b” no es igual a 0, existe una raíz única con valor –c/b, en
este caso se debe enviar el mensaje “Existe una raíz única” y de seguida el valor
de la raíz.
c- En los demás casos, utilizaremos la fórmula xi -- (-b ± √(b2 – 4ac))/(2a)

La expresión d -- b2 – 4ac se denomina discriminante.
 Si “d” es mayor que 0 entonces hay dos raíces reales, que se deben calcular
según la fórmula y mostrarse, junto al mensaje “Existen dos raíces reales”.
 Si “d” es igual que 0 entonces hay una raíz única , que se deben calcular
“-b/2ª”, en este caso se debe enviar el mensaje “Existe una raíz única”
 Si “d” es menor que 0 entonces hay dos raíces complejas de la forma J+Qi
y J-Qi.
Siendo J = –b/2a y Q = √!(b2-4ac)!/(2a), que se se lee como ( la raíz cuadrada del valor absoluto de (b2-4ac))/(2a).

                         Nota  el carácter √ corresponde a raíz cuadrada