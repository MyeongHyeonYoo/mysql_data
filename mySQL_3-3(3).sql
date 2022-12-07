USE world;

SELECT count(*) FROM city;

SELECT count(*) FROM world.city;

SELECT * FROM world.city;
SELECT * FROM world.city LIMIT5; 

SELECT * FROM world.city ORDER BY id DESC LIMIT 5;

SELECT count(*) FROM sakila.city;

CREATE TABLE big_table1 (SELECT * FROM world.city, sakila.country);
CREATE TABLE big_table2 (SELECT * FROM world.city, sakila.country);
CREATE TABLE big_table3 (SELECT * FROM world.city, sakila.country);

SELECT count(*) FROM world.city;
SELECT count(*) FROM sakila.country;
SELECT count(*) FROM big_table1;