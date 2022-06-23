program Cadena4Caracteres;
uses crt;

var cadena, palabras4l, palabras, p_caracter : string;
  caracter : char;
  i, j, lc, lpc, c_palabras : integer;

begin

  c_palabras := 0;
  palabras4l := '';
  palabras := '';
  p_caracter := '';

  write('Escriba una cadena de varias palabras: ');
  readln(cadena);
  write('Ingrese un caracter para tomar las palabras que lo contengan: ');
  readln(caracter);

  lc := length(cadena);

  //"lc + 1" se utiliza para la última vuelta que pasará al "else", y asi poder evaluar la ultima palabra
    for i := 1 to lc + 1 do
        if (cadena[i] <> ' ') and (i <= lc) then
            palabras := palabras + cadena[i]
            //tomar las palabras de la cadena
        else
          begin
            //verificar si el caracter dado por el usuario se encuentra en la palabra
            if (pos(caracter, palabras) <> 0) then
                if (Pos(palabras,p_caracter) = 0) then
                    p_caracter := p_caracter + ' ' + palabras + ',';

            //para las palabras de 4 letras
            if length(palabras) = 4 then
              begin
                //concatenar las palabras en una nueva cadena
                palabras4l := palabras4l + palabras + ' ';

                //reemplazarlas por asteriscos en "cadena"
                for j := 4 downto 1 do
                  cadena[i-j] := '*';

                //contarlas
                c_palabras := c_palabras + 1;
              end;
            palabras := '';
          end;

  lpc := length(p_caracter);

  //para reemplazar la coma del final de la cadena "p_caracter" por un punto
  if lpc > 1 then
    p_caracter[lpc] := '.';

  //salida
  writeln;
  writeln('Palabras que contienen el caracter "', caracter, '":', p_caracter);
  write('Palabras de 4 letras: ', palabras4l, '(', c_palabras);
  if c_palabras = 1 then writeln(' palabra)')
  else writeln(' palabras)');
  writeln('Nueva cadena: ', cadena);

  readkey;

end.

