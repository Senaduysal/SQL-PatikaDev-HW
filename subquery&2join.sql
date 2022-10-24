--film uzunlugu en fazla olan filmlerin isimlerini, uzunlugunu, actor isim ve soyisimleri ile birlikte yazdırınız
--buradaki durum; bu iki tablo arasında direk bir ilişki yok. Dolayısıyla önce bu iliskiyi sağlayacağım- bu durumda JOIN kullanırım.
--film_actor tablosu ile bu ilişkiyi sağlayabilirim.
--INNER JOIN kullanıyorum cunku aktorlerını bildiğim filmler ile filmlerini bildiğim aktorler aynı.


SELECT actor.first_name, actor.last_name, film.title, film.length
FROM actor 
INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id --once actor tablomla film_actor tablomu birlestirerek id leri denklicem
INNER JOIN film ON film.film_id = film_actor.film_id-- şimdide film tablosundaki film_id'yi film_actor tablosuna baglıcam
WHERE film.length =
(
    SELECT MAX(length) FROM film  
);
