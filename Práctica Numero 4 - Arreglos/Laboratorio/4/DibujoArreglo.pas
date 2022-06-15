
Program DibujoArreglo;

Uses Crt;

Var 
  Arreglo: Array[1..5,1..5] Of integer;
  Cont,i,j,M,N,aux,aux2: Integer;
Begin

  Clrscr;
  N := 5;
  M := 5;
  Cont := 0;
  Aux := 0;
  Aux2 := 0;


  For i:= 1 To M Do
    Begin
      For j:= 1 To N Do
        Begin
          Arreglo[i,j] := 0;
        End;
    End;


  For j:=1 To M Do
    Begin
      For i:=1 To j Do
        Begin
          If i < j Then
            Begin
              Cont := cont + 1;
              Arreglo[i,j] := Cont;
            End;
        End;
    End;


  For i:=1 To M Do
    Begin
      For j := 1 To N Do
        Begin
          If Arreglo[i,j] <> 0 Then
            Write(Arreglo[i,j],'   ')
          Else
            Write('    ');
        End;
      Writeln(' ');
    End;

  Gotoxy(1,7);
  Cont := 0;

  For i:= 1 To M Do
    Begin
      For j:= 1 To N Do
        Begin
          Arreglo[i,j] := 0;
        End;
    End;

  For i:=1 To 5 Do
    Begin
      If I<= M Div 2 + 1 Then
        Begin
          For j := i To M-i+1 Do
            Begin
              Cont := Cont+1;
              Arreglo[i,j] := Cont;
            End;
        End
      Else
        Begin
          For j:=M-i+1 To i Do
            Begin
              Cont := Cont+1;
              Arreglo[i,j] := Cont;
            End;
        End;
    End;

  For i:=1 To M Do
    Begin
      For j := 1 To N Do
        Begin
          If Arreglo[i,j] <> 0 Then
            Write(Arreglo[i,j],'   ')
          Else
            Write('    ');
        End;
      Writeln(' ');
    End;

  Readkey();
End.

{

1,2
1,3
2,3
1,4
2,4
3,4
1,5
2,5
3,5
4,5


    
    Elabore un programa en Pascal que haga el recorrido de las siguientes matrices:

X  1  2  4  7       1   2    3    4    5
X  X  3  5  8       X   6    7    8    X
X  X  X  6  9       X   X    9    X    X
X  X  X  X  10      X   10  11    12   X
X  X  X  X  X       13  14  15    16  17}
