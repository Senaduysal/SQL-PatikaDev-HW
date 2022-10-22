--1) city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
SELECT city.city, country.country FROM city
LEFT JOIN country 
ON city.country_id =country.countrty_id;
--2)customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN
--sorgusunu yazınız.
SELECT customer.first_name, customer.last_name, payment.payment_id
FROM customer
RIGHT JOIN payment
ON customercustomer_id=payment.customer_id
-- 3)customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz
--FULL JOIN sorgusunu yazınız.
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM customer customer FULL OUTER JOIN rental ON customer.customer_id = rental.customer_id
