program EstimuloAcademico;
Uses Crt;
Var
   NivelAcademico:String[8];
   Promedio,Costo:Real;
   Descuento,ValorDelCredito,unidadesDeCredito:Integer;
begin
   Descuento:=0; Costo:=0; UnidadesDeCredito:=0;
   Repeat
         Writeln('Por favor introduzca su nivel academico');
         Writeln('0:Pregrado, 1:Posgrado');
         Readln(NivelAcademico);
         Case NivelAcademico of
             '0':NivelAcademico:='Pregrado';
             '1':NivelAcademico:='Posgrado';
         Else
             Clrscr;
             Writeln('Usted ha ingresado un caracter no valido, presione cualquier tecla e intente de nuevo');
             Readkey();
             Clrscr;
         end;
   until (NivelAcademico='Pregrado') or (NivelAcademico='Posgrado');

   Writeln('Por favor introduzca su promedio academico');
   Read(Promedio);
  if NivelAcademico='Pregrado' then
      begin
          ValorDelCredito:=150;
          if Promedio>=15.5 then
              begin
                   UnidadesDeCredito:=28;
                   Descuento:=20;
              end
          else
              Begin
                   if (Promedio>=14) and (Promedio<15.5) then
                       begin
                         UnidadesDeCredito:=25;
                         Descuento:=10;
                       end
                   else
                       begin
                         if (Promedio>=12.5) and (Promedio<14) then
                             begin
                                  UnidadesDeCredito:=20;
                             end
                         else
                             begin
                                  if (Promedio>=10) and (Promedio<12.5) then
                                      begin
                                        UnidadesDeCredito:=15;
                                      end
                                  Else
                                      Begin
                                        Writeln('Usted no podra matricularse debido a su promedio');
                                      end;
                             end;
                       end;
              end;
        end
  Else
      Begin
           If NivelAcademico='Posgrado' then
              Begin
                 ValorDelCredito:=300;
                 if (Promedio>=4.5) then
                     begin
                       UnidadesDeCredito:=20;
                       Descuento:=20;
                     end
                 Else
                     Begin
                          if (Promedio<4.5) then
                          begin
                            UnidadesDeCredito:=10;
                          end;
                     End;
              End;
      end;
Costo:=UnidadesDeCredito*ValorDelCredito - (UnidadesDeCredito*ValorDelCredito*descuento/100);

Writeln('Usted debe de pagar: ', Costo:0:2,' bolivares,  y puede registrar ', UnidadesDeCredito,' Creditos');
Readkey();
end.



