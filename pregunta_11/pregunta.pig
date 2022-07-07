/*
Pregunta
===========================================================================

Para responder la pregunta use el archivo `data.csv`.

Escriba el código que genere la siguiente salida.

   Boyer,BOYER,boyer
   Coffey,COFFEY,coffey
   Conway,CONWAY,conway
   Crane,CRANE,crane
   Diaz,DIAZ,diaz
   Estes,ESTES,estes
   Fry,FRY,fry
   Garrett,GARRETT,garrett
   Guy,GUY,guy
   Hamilton,HAMILTON,hamilton
   Holcomb,HOLCOMB,holcomb
   Jarvis,JARVIS,jarvis
   Kinney,KINNEY,kinney
   Klein,KLEIN,klein
   Knight,KNIGHT,knight
   Noel,NOEL,noel
   Sexton,SEXTON,sexton
   Silva,SILVA,silva

Escriba el resultado a la carpeta `output` del directorio actual. Para la 
evaluación, pig sera eejcutado ejecutado en modo local:

$ pig -x local -f pregunta.pig

        data = LOAD 'data.csv' USING PigStorage(',') AS (FILA:INT,NOMBRE:CHARARRAY,RESIDENSIA:CHARARRAY,FECHA:CHARARRAY,COLOR:CHARARRAY,NUMERO:INT);
        data = ORDER data BY RESIDENSIA;
        data = FOREACH data GENERATE UCFIRST(RESIDENSIA), UPPER(RESIDENSIA),LOWER(RESIDENSIA) AS RESIDENSIA2 ;

        STORE data INTO 'output' USING PigStorage(',');
*/

