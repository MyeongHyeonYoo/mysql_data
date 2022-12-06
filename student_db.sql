CREATE SCHEMA student_db;
CREATE TABLE `student_db`.`score` (
  `student_id` INT UNSIGNED NOT NULL,
  `student_name` CHAR(4) NOT NULL,
  `korean_language` TINYINT(3) UNSIGNED NOT NULL,
  `english` TINYINT(3) UNSIGNED NOT NULL,
  `maths` TINYINT(3) UNSIGNED NOT NULL,
  
  PRIMARY KEY (`student_id`));

INSERT INTO student_db.score values (1, '일번', 90, 50, 45);
INSERT INTO student_db.score values (2, '이번', 80, 50, 35);
INSERT INTO student_db.score values (3, '삼번', 40, 60, 30);
INSERT INTO student_db.score values (4, '사번', 90, 50, 70);
INSERT INTO student_db.score values (5, '오번', 75, 50, 55);


COMMIT;

SELECT * FROM student_db.score;

show SCHEMAS;
show DATABASES; 

DROP SCHEMA student_db;
