CREATE TABLE hs (
	no MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL,
    kuk MEDIUMINT NULL,
    eng MEDIUMINT NULL,
    math MEDIUMINT NULL,
    PRIMARY KEY (no)
);

ALTER TABLE hs AUTO_INCREMENT=1;
INSERT INTO hs(name, kuk, eng, math) VALUES('말자', 40, 50, 30);
INSERT INTO hs(name, kuk, eng, math) VALUES('영자', 80, 70, 60);
INSERT INTO hs(name, kuk, eng, math) VALUES('공자', 90, 80, 90);
INSERT INTO hs(name, kuk, eng, math) VALUES('its me', 95, 85, 92);
INSERT INTO hs(name, kuk, eng, math) VALUES('test', 95, 85, 92);


SELECT *, kuk+eng+math as 총점, 
		ROUND(((kuk+eng+math)/3), 2) as 평균, 
        format(((kuk+eng+math)/3), 2) as 평균,
		rank() over(order by (kuk+eng+math)/3 desc) AS 랭킹 
FROM hs;


DROP TABLE hs;

SELECT * FROM hs;

DELETE FROM hs WHERE no = 1;

SHOW GLOBAL VARIABLES;