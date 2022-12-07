CREATE TABLE city_popul (city_name CHAR(35), population INT);

INSERT INTO city_popul values('seoul', 325);


UPDATE city_popul
	SET city_name = '서울'
    WHERE city_name = 'seoul';

SELECT * FROM city_popul WHERE city_name = '서울';

SET SQL_SAFE_UPDATES = 0;