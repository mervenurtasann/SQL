-- ************************ Kelimeler Tablosundan *******************************
/*-------------------------------------------------------------------------
Q1: 3 harfli kelimeleri listeleyin
---------------------------------------------------------------------------*/
SELECT kelime
FROM kelimeler
WHERE kelime LIKE '___'; 
​
/*-------------------------------------------------------------------------
Q2: En az 3 harfli kelimeleri listeleyin
---------------------------------------------------------------------------*/
SELECT kelime
FROM kelimeler
WHERE kelime LIKE '___%'; 
​
/*-------------------------------------------------------------------------
Q3: H ile baslayip t ile biten kelimeleri listeleyin
---------------------------------------------------------------------------*/
SELECT kelime
FROM kelimeler
WHERE kelime LIKE 'h%t';
​
/*-------------------------------------------------------------------------
Q4: H ile baslayip t ile biten kelimeleri case sensitive listeleyin
---------------------------------------------------------------------------*/


​
/*-------------------------------------------------------------------------
Q5: H ile baslayip t ile biten 3 harfli kelimeleri case insensitive listeleyin
---------------------------------------------------------------------------*/

SELECT kelime
FROM kelimeler
WHERE kelime LIKE 'h_t';

/*-------------------------------------------------------------------------
Q6: 3 ya da daha az karakterli kelimeleri listeleyin
---------------------------------------------------------------------------*/

​SELECT kelime
FROM kelimeler
WHERE kelime NOT LIKE '_____%' ;

/*-------------------------------------------------------------------------
Q7: id'si 8 rakamini iceren kelimeleri listeleyin
---------------------------------------------------------------------------*/
SELECT kelime
FROM kelimeler
WHERE id LIKE '%8%';