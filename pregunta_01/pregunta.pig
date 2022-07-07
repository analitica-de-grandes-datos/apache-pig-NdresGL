/* 
Pregunta
===========================================================================

Para el archivo `data.tsv` compute la cantidad de registros por letra.
Almacene los resultados separados por comas. 

Escriba el resultado a la carpeta `output` del directorio actual. Para la 
evaluación, pig sera eejcutado ejecutado en modo local:

$ pig -x local -f pregunta.pig

        -- carga de datos desde la carpeta local
        lines = LOAD 'data.tsv' USING PigStorage('\t') AS (Letra:CHARARRAY,fecha:CHARARRAY,numero:INT);

        -- genera una tabla llamada words con una palabra por registro
        words = FOREACH lines GENERATE FLATTEN(TOKENIZE(Letra)) AS word;

        -- agrupa los registros que tienen la misma palabra
        grouped = GROUP words BY word;

        -- genera una variable que cuenta las ocurrencias por cada grupo
        wordcount = FOREACH grouped GENERATE group, COUNT(words);

        -- escribe el archivo de salida en el sistema local
        STORE wordcount INTO 'output';
*/
