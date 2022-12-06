USE market_db;
USE shop_db;
SELECT * FROM buy;
SELECT * FROM member;

INSERT INTO member VALUES('TWC', '트와이스', '9', '서울', '02', '11111111', '167', '2015.10.19');
INSERT INTO buy VALUES(NULL, 'TWC', '지갑', NULL, 30, 2);

SELECT * FROM market_db.member;
SELECT * FROM member;
SELECT mem_name FROM member;

SELECT addr 주소, debut_date "데비 일자", mem_name FROM member;

SELECT mem_id, mem_name
	FROM member
    WHERE height <= 162;
    
SELECT mem_name, height, mem_number
	FROM member
    WHERE height >= 165 AND mem_number > 6;
    
SELECT mem_name, height, mem_number
	FROM member
    WHERE height >= 165 OR mem_number > 6;
    
SELECT mem_name, height
	FROM member
    WHERE height >= 163 AND height <= 165;
    
SELECT mem_name, height
	FROM member
    WHERE height BETWEEN 163 AND 165TWC;
    
SELECT mem_name, addr
	FROM member
	WHERE addr = '경기' OR addr = '전남' OR addr = '경남';
    
SELECT mem_name, addr
	FROM member
    WHERE addr IN('경기', '전남', '경남');
    
SELECT *
	FROM member
    WHERE mem_name LIKE '우%';

SELECT *
	FROM member
    WHERE mem_name LIKE '__핑크';
    
    
SELECT height FROM member WHERE mem_name = '에이핑크';

SELECT mem_name, height FROM member WHERE height > 164;

SELECT mem_name, height FROM member
WHERE height > (SELECT height FROM member WHERE mem_name = '에이핑크');

SELECT mem_id, mem_name, debut_date
	FROM member
    ORDER BY debut_Date;
    
SELECT mem_id, mem_name, debut_date
	FROM member
    ORDER BY debut_date DESC;

SELECT mem_id, mem_name, debut_date, height
	FROM member
	WHERE hegiht >= 164
    ORDER BY height DESC;
   
