
Program CadenaPalindrome;

Uses Crt;

Var 
  cadenita,cadenitaMinuscula,CadenitaSinEspacios,Cadenitaespejo: String;
  i: Integer;
  Palindrome: Boolean;

Begin
  CadenitaSinEspacios := '';
  CadenitaEspejo := '';

  Writeln('Ingrese una cadena de caracteres.');
  Readln(Cadenita);

  cadenitaMinuscula := lowercase(Cadenita);

  //Se eliminan los espacios
  For i:=1 To length(cadenitaMinuscula) Do
    Begin
      If cadenitaMinuscula[i] <> ' ' Then
        CadenitaSinEspacios :=  CadenitaSinEspacios + cadenitaMinuscula[i];
    End;

  For i:=length(CadenitaSinEspacios) Downto 1 Do
    Begin
      Cadenitaespejo := CadenitaEspejo + CadenitaSinEspacios[i];
    End;

  If CadenitaEspejo = CadenitaSinEspacios Then
    Palindrome := True
  Else
    Palindrome := false;

  Case palindrome Of 
    true: Writeln('La cadena "',cadenita,'" es palindrome.');
    false: Writeln('La cadena "',cadenita,'" no es palindrome.');
  End;

  Readkey();
End.


Escriba un programa que reciba una cadena de caracteres y determine si
esta cadena es palíndrome. Una cadena es palíndrome si se lee igual de
derecha a izquierda y de izquierda a derecha. Ejemplo
"Isaac no ronca así"