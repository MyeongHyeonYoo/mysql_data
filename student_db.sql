CREATE SCHEMA student_db;

-- USE student_db;
CREATE TABLE student_db.score (
  `student_id` INT(10) NOT NULL AUTO_INCREMENT,
  `student_name` CHAR(4) NOT NULL,
  `korean_language` TINYINT(3) UNSIGNED NOT NULL,
  `english` TINYINT(3) UNSIGNED NOT NULL,
  `maths` TINYINT(3) UNSIGNED NOT NULL,
  `total_score` CHAR(3) NULL,
  `average` CHAR(3) NULL,
  `grade` CHAR(1) GENERATED ALWAYS AS (NULL) VIRTUAL,
PRIMARY KEY(student_id));
-- ALTER TABLE student_db.score AUTO_INCREMENT=1;

INSERT INTO student_db.score (student_name, korean_language, english, maths) VALUES ('일번', '95', '79', '88');
INSERT INTO student_db.score (student_name, korean_language, english, maths) VALUES ('이번', '74', '34', '55');
INSERT INTO student_db.score (student_name, korean_language, english, maths) VALUES ('삼번', '25', '15', '70');
INSERT INTO student_db.score (student_name, korean_language, english, maths) VALUES ('사번', '65', '49', '98');
INSERT INTO student_db.score (student_name, korean_language, english, maths) VALUES ('오번', '33', '25', '33');


show SCHEMAS;
show DATABASES;

SELECT * FROM student_db.score;

DROP SCHEMA student_db;
DELETE FROM student_db.score WHERE student_id = 1;

COMMIT;