-- ************************ Anadolu Lisesi Tablosundan *****************************
-- Q1 : Okul_no'su 1005'ten buyuk olan ogrencilerin tum bilgilerini listeleyin.
-- Q2 : Ismi Anil Fidan olan ogrencinin derecesini listeleyin.
-- Q3 : Derecesi 90'dan buyuk olan ogrencilerin okul_no ve isimlerini listeleyin.
-- Q4 : Okul nosu 1003 ile 1007 arasinda olan ogrencilerin sehrini listeleyin 
-- Q5 : Istanbul'da yasayan ogrencilerin isimlerini listeleyin.
-- *********************************************************************************

-- Q1 : Okul_no'su 1005'ten buyuk olan ogrencilerin tum bilgilerini listeleyin.
SELECT *
FROM anadolu_lisesi
WHERE okul_no>1005;

-- Q2 : Ismi Anil Fidan olan ogrencinin derecesini listeleyin.
SELECT derece
FROM anadolu_lisesi
WHERE isim='Anil Fidan';

-- Q3 : Derecesi 90'dan buyuk olan ogrencilerin okul_no ve isimlerini listeleyin.
SELECT okul_no, isim
FROM anadolu_lisesi
WHERE derece>90;

-- Q4 : Okul nosu 1003 ile 1007 arasinda olan ogrencilerin sehrini listeleyin 
SELECT adres
FROM anadolu_lisesi
WHERE okul_no>'1003' && okul_no<'1007';

-- Q5 : Istanbul'da yasayan ogrencilerin isimlerini listeleyin.
SELECT isim
FROM anadolu_lisesi
WHERE adres='Istanbul';



use sys;
CREATE TABLE ogretmen_lisesi(
id int,
isim VARCHAR(45),
adres VARCHAR(100),
sinav_notu DOUBLE
);
INSERT INTO ogretmen_lisesi VALUES (111, 'Emine Yucel', 'Ankara', 75);
INSERT INTO ogretmen_lisesi VALUES (112, 'Muhammet Talha Kurt', 'Istanbul', 85);
INSERT INTO ogretmen_lisesi VALUES (113, 'Ilhan Sahin', 'Ankara', 70);
INSERT INTO ogretmen_lisesi VALUES (114, 'Kadir Corumlu', 'Corum', 90);
INSERT INTO ogretmen_lisesi VALUES (115, 'Selman Kasabali', 'Ankara',70);
INSERT INTO ogretmen_lisesi VALUES (116, 'Murat Aycicek', 'Izmir', 85);
INSERT INTO ogretmen_lisesi VALUES (117, 'Tugba Ozsoy', 'Bolu', 85);



/*-------------------------------------------------------------------------
Q1: Sinav notu 80'den buyuk olan ogrencilerin tum bilgilerini listeleyin.*/
SELECT *
FROM ogretmen_lisesi
WHERE sinav_notu>80;

/*-------------------------------------------------------------------------
Q2: Adresi Ankara olan ogrencilerin isim ve adres bilgilerini listeleyin.
---------------------------------------------------------------------------*/
SELECT isim, adres
FROM ogretmen_lisesi
WHERE adres ='Ankara';
/*-------------------------------------------------------------------------
Q3: id'si 114 olan ogrencinin adini listeleyin.
---------------------------------------------------------------------------*/
SELECT isim
FROM ogretmen_lisesi
WHERE id='114';
/*-------------------------------------------------------------------------
Q4: id'si 115'ten buyuk olan ogrencilerin sehirlerini listeleyin.
---------------------------------------------------------------------------*/
SELECT adres
FROM ogretmen_lisesi
WHERE id>'115';
/*-------------------------------------------------------------------------
Q5: Istanbulda yasayan ogrencilerin adini listeleyin.
---------------------------------------------------------------------------*/
SELECT isim
FROM ogretmen_lisesi
WHERE adres='Istanbul';
/*-------------------------------------------------------------------------
Q6: id'si 113ten buyuk 116'dan kucuk olan ogrencilerin derecesini listeleyin.
---------------------------------------------------------------------------*/
SELECT sinav_notu
FROM ogretmen_lisesi
WHERE id>'113' && id<'116';