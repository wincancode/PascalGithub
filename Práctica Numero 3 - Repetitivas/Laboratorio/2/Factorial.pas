program Factorial;
Uses Crt;

Var
  N,Fact,i,menu:Integer;
begin
  //Se inicializa el contador y se piden los datos al usuario
  i:=1;
  Writeln('Este programa calcula el factorial de un numero entero positivo');
  Writeln('Ingrese el numero.');
  Readln(N);
  Fact:=N;

  Writeln('Elija que estructura repetitiva quiere que se use para calcule el factorial');
  Writeln('1: Repita mientras; 2: Repita Hasta; 3: Repita para');

  Readln(menu);

  //Se verifica si el numero es 0 para saltar el menu al saberse el resultado de antemano
  If (N=0) then
    Begin
         Fact:=1;
         menu:=0;
    end;

  Case menu of
       1: Begin   //Caso R.mientras
              While (i<N) do
                   begin
                        fact:=Fact*i;
                        i:=i+1;
                   end;
          end;

       2: Begin   //Caso R.Hasta
              Repeat
                 fact:=Fact*i;
                 i:=i+1;
              until (i=N);
          end;

       3: Begin   //Caso R.Para
              For i:=1 to (N-1) do
                   begin
                        fact:=Fact*i;
                   end;
          end;


  end;


  Writeln('El factorial del numero ',N,' es igual a: ',Fact);
  Writeln('Es decir; ',N,'! = ',Fact);
  Readkey();
end.

{2.-Construya un algoritmo que calcule el factorial de un número entero positivo N. La
función factorial, representada por N!, es ampliamente utilizada, y se especifica que
N!= N*(N-1)!, y además 0!=1. Implemente el mismo programa utilizando un menú que
escoja la forma de calcular el factorial entre un repita mientras, un repita hasta o un
repita para.}
