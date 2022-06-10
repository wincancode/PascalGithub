
Program Ahorcado;

Uses Crt;

Const 
  Palabra: Array[1..8] Of char = ('a','h','o','r','c','a','d','o');
  Vidas = 5;

Var 
  Palabra_Usuario: Array[1..8] Of char;
  Fallos: Integer;
  Letra_User: Char;
  i,j,k: Integer;
  Terminado,Letra_Correcta: Boolean;
Begin
  Terminado := False;
  Fallos := 0;

  Writeln('Este es un juego simple del ahorcado; diviertase!');
  Writeln('Presione cualquier tecla para comenzar');
  Readkey();


  //Se dibuja el tablero
  Clrscr;
  Gotoxy(1,4);
  For i:=1 To 8 Do
    Begin
      Write('-')
    End;

  //Se dibuja el ahorcado
  Gotoxy(20,3);
  Write('O');
  Gotoxy(19,4);
  Write('/|\');
  Gotoxy(19,5);
  Write ('/ \');

  Repeat


    Letra_Correcta := false;

    //Se lee la letra ingresada por el usuario
    Gotoxy(3,5);
    Readln(Letra_User);

    //Se revisa si la letra ingresada por el usuario se encuentra dentro de la palabra, y se dibuja
    For j:=1 To 8 Do
      Begin
        If (Letra_User = Palabra[j]) Then
          Begin
            Gotoxy(j,3);
            Write(Palabra[j]);
            Letra_Correcta := True;
            Palabra_Usuario[j] := Letra_User;
          End
      End;

    If (Letra_Correcta = false) Then
      Begin

        Fallos := Fallos+1;


        If Fallos=1 Then
          Begin
            Gotoxy(19,4);
            Textcolor(Red);
            Write('/');
          End
        Else
          Begin
            If Fallos=2 Then
              Begin
                Gotoxy(21,4);
                Textcolor(Red);
                Write('\');
              End
            Else
              Begin
                If Fallos=3 Then
                  Begin
                    Gotoxy(19,5);
                    Textcolor(Red);
                    Write('/');
                  End
                Else
                  Begin
                    If Fallos=4 Then
                      Begin
                        Gotoxy(21,5);
                        Textcolor(Red);
                        Write('\');
                      End
                    Else
                      Begin
                        If Fallos=5 Then
                          Begin
                            Gotoxy(20,3);
                            Textcolor(Red);
                            Write('O');
                            Gotoxy(20,4);
                            Write('|');
                          End
                        Else
                          Begin
                          End;
                      End;
                  End;
              End;
          End;
      End;

    Textcolor(White);
    Gotoxy(1,7);
    Write('Intentos restantes: ',Vidas - Fallos);

    If (Fallos=5) Then
      Begin
        Gotoxy(1,1);
        Write('Se acabaron los intentos, ha perdido!');
        Gotoxy(1,9);
        Write('La palabra era: ');
        For i:=1 To 8 Do
          Begin
            Write(Palabra[i]);
          End;
        Terminado := True;
        Readkey();
      End
    Else
      Begin
        If Palabra_Usuario = Palabra Then
          Begin
            Gotoxy(1,1);
            Write('Has ganado! Felicidades!');
            Terminado := true;
            Readkey();
          End;
      End;





  Until (Terminado = true);

  Clrscr;
  Gotoxy(1,1);
  Write('Gracias por jugar!');
  Gotoxy(5,3);
  Write('O');
  Gotoxy(4,4);
  Write('/|\');
  Gotoxy(4,5);
  Write ('/ \');



  While Not (Keypressed) Do
    Begin
      Gotoxy(6,4);
      Write(' ');
      Gotoxy(6,3);
      Write('/');

      delay(500);

      Gotoxy(6,3);
      Write(' ');
      Gotoxy(6,4);
      Write('\');

      delay(500);

    End;





End.

{El juego del ahorcado se juega con dos persona ( o una persona y una computadora). Un jugador escribe una palabra y el otro jugador trata de adivinar la palabra adivinando letras individuales, hasta que supere un número máximo de fallos, dado por pantalla, o adivine correctamente la palabra. Diseñar un programa para jugar al ahorcado, usando arreglos.}
