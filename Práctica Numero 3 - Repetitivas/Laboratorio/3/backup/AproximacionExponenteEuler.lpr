program euler;
uses crt;
var
      i,k,q,n,x:integer;
      fact,aprox:extended;

begin


  WriteLn('introduzca el exponente al que quierw elevar la constante"e"');
  readln(x);
  WriteLn('introduzca el numero de veces que quiere repetir la secuencia para cLcular la potencia. a mayor cantidad, mas precision en em calculo');
  ReadLn(n);

  aprox:=1;

  for i:=1 to n do
  begin

      fact:=1;

      for k:=1 to i do
      begin
            fact:=fact*k;
      end;


      aprox:= aprox+((exp(i * ln(x)))/fact);



  end;

  writeln(aprox:0:9);
  readkey();

end.

{3.- La expresión e
x
para un número x cualquiera se puede estimar haciendo uso de la
siguiente serie:
e
x = 1 + x + x2 / 2! + x3 / 3! + …+ xn / n! ,
La cantidad de términos a sumar depende de la precisión que se desee, que se especifica
cuando el valor del último término generado sea menor que un valor cualquiera.
Escriba un programa que dado un valor X y el valor de N calcule el valor de ex
Nota : Recuerde que el signo “!” representa el factorial del número.}
