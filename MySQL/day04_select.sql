/*-------------------------------------------------------------------------
Q12: Ismi Ahmet ile Ayse Cano arasinda olan personel bilgilerini listeleyin
---------------------------------------------------------------------------*/
use sys;

SELECT *
FROM personel
WHERE isim
BETWEEN 'Ahmet' AND 'Ayse Cano';

/*-------------------------------------------------------------------------
Q13: Maasi 7000 ya da ismi Ayse olan personel id'lerini listeleyin
---------------------------------------------------------------------------*/

SELECT id
FROM personel
WHERE maas=7000 OR isim='Ayse';

/*-------------------------------------------------------------------------
Q14: Id'si 10001, 10005 ya da 10008 olan personel isimlerini listeleyin
---------------------------------------------------------------------------*/

SELECT isim
FROM personel
WHERE id = 10001 OR id =10005 OR id=10008;











