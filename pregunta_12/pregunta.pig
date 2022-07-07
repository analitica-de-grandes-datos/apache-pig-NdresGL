/*
Pregunta
===========================================================================

Para responder la pregunta use el archivo `data.csv`.

Obtenga los apellidos que empiecen por las letras entre la 'd' y la 'k'. La 
salida esperada es la siguiente:

  (Hamilton)
  (Holcomb)
  (Garrett)
  (Fry)
  (Kinney)
  (Klein)
  (Diaz)
  (Guy)
  (Estes)
  (Jarvis)
  (Knight)

Escriba el resultado a la carpeta `output` del directorio actual. Para la 
evaluación, pig sera eejcutado ejecutado en modo local:

$ pig -x local -f pregunta.pig

        data = LOAD 'data.csv' USING PigStorage(',') AS (FILA:INT,NOMBRE:CHARARRAY,RESIDENSIA:CHARARRAY,FECHA:CHARARRAY,COLOR:CHARARRAY,NUMERO:INT);

        data = FOREACH data GENERATE RESIDENSIA, UPPER(SUBSTRING(RESIDENSIA,0,1)) AS LETRA ;
        data = FILTER data BY LETRA =='D' OR LETRA =='E' OR LETRA =='F' OR LETRA =='G' OR LETRA =='H'  OR LETRA == 'K';
        data = FOREACH data GENERATE RESIDENSIA;

        STORE data INTO 'output' USING PigStorage(',');
*/

