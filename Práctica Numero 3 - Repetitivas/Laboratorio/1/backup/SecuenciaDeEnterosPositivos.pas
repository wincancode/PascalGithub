program SecuenciaDeEnterosPositivos;
Uses Crt, unit1;

Var
  j,k,i,Num,Primos,N,N_Iguales,mayor,menor:Integer;
  p_pares,p_impares:Real;
begin

  p_pares:=0; p_impares:=0; i:=0; Primos:=0; Mayor:=0; Menor:=2; N_Iguales:=0; j:=0;

  Writeln('Ingrese un valor cualquiera que sea entero y positivo');
  Readln(N);
  Writeln('Se va a comenzar a recibir la secuencia de numeros enteros positivos, y no se va a terminar hasta que se ingrese un numero "0"');
  Writeln('Ingrese los valores deseados');
  Repeat
        Readln(Num);
        If (Num<>0) then
           Begin
                k:=0;
                i:=i+1;

                If (Num MOD 2 = 0) then
                   P_pares:=P_pares+1
                else
                   P_Impares:=P_impares+1;

                If (Num=N) then
                   N_Iguales:=N_Iguales+1;

                If (Num>Mayor) then
                   Mayor:=Num;

                If (Num<menor) or (i=1) then
                   Menor:=Num;

                For j:=num downto 1 do
                    begin
                        if (Num mod j =0) then
                           k:=k+1;
                    end;

                If (k=2) then
                   Primos:=Primos+1;
           end;
  until (Num=0);

  P_Pares:=P_Pares/i*100;
  P_Impares:=P_Impares/i*100;

  Writeln('');
  Writeln('El porcentaje de numeros impares es de: ',P_Impares:0:2,'%');
  Writeln('El porcentaje de numeros pares es de: ',P_pares:0:2,'%');
  Writeln('La cantidad de valores iguales al valor ingresado ',N,' es de: ',N_Iguales);
  Writeln('El numero mayor de la secuencia es: ',Mayor);
  Writeln('El numero menor de la secuencia es: ',menor);
  Writeln('La cantidad de numeros primos ingresados fue de: ',Primos);

  Readkey();
end.

{1.- Dada una secuencia de enteros positivos terminada en cero, elabore un algoritmo que:
a) Calcule el porcentaje de números impares y el porcentaje de números pares.
b) Calcule la cantidad de valores iguales a un valor N dado por el usuario.
c) El número mayor y el menor de la secuencia
d) Contar la cantidad de números primos.}
