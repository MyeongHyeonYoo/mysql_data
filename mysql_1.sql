SELECT * FROM member;
SELECT * FROM product;

SELECt * FROM member WHERE member_name = '아이유';

USE SHOP_db;
CREATE INDEX idx_member_name ON member(member_name);

DROP VIEW memeber_view;
CREATE VIEW member_view as SELECT * FROM member ORDER BY member_name;

SELECT * FROM member_view;

SELECT * FROM member WHERE member_name = '나훈아';
SELECT * FROM product WHERE product_name = '삼각김밥';