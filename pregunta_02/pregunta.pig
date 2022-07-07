/*
Pregunta
===========================================================================

Ordene el archivo `data.tsv`  por letra y valor (3ra columna). Escriba el
resultado separado por comas.

Escriba el resultado a la carpeta `output` del directorio actual. Para la 
evaluación, pig sera eejcutado ejecutado en modo local:

$ pig -x local -f pregunta.pig

     lines = LOAD 'data.tsv' USING PigStorage('\t') AS (Letra:CHARARRAY,fecha:CHARARRAY,numero:float);

     lines2 = FOREACH lines GENERATE Letra, fecha, (numero/10) AS (numero:float);

     --Ordenar por valor
     lines2 = ORDER lines2 BY Letra, numero;


     lines3 = FOREACH lines2 GENERATE Letra, fecha, (numero)*10 AS (numero2:INT);

     STORE lines3 INTO 'output' USING PigStorage(',');
*/
