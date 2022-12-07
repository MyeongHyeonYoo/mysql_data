USE market_db;

CREATE TABLE hongong1 (toy_id INT, toy_name CHAR(4), age INT);
INSERT INTO hongong1 VALUES (1, '우디', 25);

INSERT INTO hongong1 (toy_id, toy_name) VALUES(2, '버즈');

INSERT INTO hongong1 (toy_name, age, toy_id) VALUES('제시', 20, 3);

SELECT * FROM hongong1;

CREATE TABLE hongong2 (
	toy_id INT AUTO_INCREMENT PRIMARY KEY,
    toy_name CHAR(4),
    age INT);
    
INSERT INTO hongong2 VALUES (NULL, '보핍', 25);
INSERT INTO hongong2 VALUES (NULL, '슬링키', 22);  
INSERT INTO hongong2 VALUES (NULL, '렉스', 21);    

SELECT * FROM hongong2;  

DROP TABLE hongong2;