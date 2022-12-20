-- 데이터 조회하기

-- 1. 다음 주어진 과제를 단계별로 문제해결 시니리오를 작성하시오. (8점)
-- 1) 아래의 테이블의 SQL 문으로 작성한다.
CREATE SCHEMA student_score;

USE student_score;

CREATE TABLE student_score.score (
  `student_number` INT NOT NULL AUTO_INCREMENT,
  `student_name` CHAR(4) NOT NULL,
  `korean_language` TINYINT UNSIGNED NOT NULL,
  `english` TINYINT UNSIGNED NOT NULL,
  `maths` TINYINT UNSIGNED NOT NULL,
PRIMARY KEY(student_number));

INSERT INTO student_score.score (student_name, korean_language, english, maths) VALUES ('공자', '90', '100', '90');
INSERT INTO student_score.score (student_name, korean_language, english, maths) VALUES ('순자', '70', '80', '60');
INSERT INTO student_score.score (student_name, korean_language, english, maths) VALUES ('맹자', '40', '60', '50');

SELECT 
	student_number AS 번호,
    student_name AS 이름,
    korean_language AS 국어,
    english AS 영어,
    maths AS 수학
FROM student_score.score;
-- -----------------------------------------------------------------------------------------------------------
-- 2) 합계와 총계를 포함하여 출력
SELECT 
	student_number AS 번호,
    student_name AS 이름,
    korean_language AS 국어,
    english AS 영어,
    maths AS 수학,
    korean_language+english+maths AS 합계,
    (korean_language+english+maths)/3 AS 평균 
FROM student_score.score;

-- 3) 평균이 90점 이상인 데이터만 출력
SELECT 
	student_number AS 번호,
    student_name AS 이름,
    korean_language AS 국어,
    english AS 영어,
    maths AS 수학,
    korean_language+english+maths AS 합계,
    (korean_language+english+maths)/3 AS 평균 
FROM student_score.score
WHERE (korean_language+english+maths)/3 >= 90;

-- 데이터 수정하기
-- 1. 문제 해결 시나리오 있는 학생 테이블에서 국어 점수가 80이상면서 영어점수가 60점 이상인 학생을 출력하는 SQL문을 서술하시오.(4점)
SELECT 
	student_number AS 번호,
    student_name AS 이름,
    korean_language AS 국어,
    english AS 영어,
    maths AS 수학
FROM student_score.score
WHERE korean_language >= 80 AND english >= 60;

-- 2. 데이터 수정 내용을 과제를 단계별로 문제해결 시니리오를 작성하시오.(7점)
-- 1) 번호 : 4, 이름 : 영자 , 국어: 80, 영어 : 60, 수학 70 인 데이터를 입력
INSERT INTO student_score.score (student_name, korean_language, english, maths) VALUES ('영자', '80', '60', '70');

-- 2) 영자의 수학 점수를 90점으로 수정
UPDATE student_score.score SET maths = 90 WHERE student_name = '영자';

-- 3) 영자의 레코드를 삭제
DELETE FROM student_score.score WHERE student_name = '영자';



-- 5. 아래 그림의 두 테이블 관계를 단계별로 문제해결 시니리오를 작성하시오.(5점)
-- 1) 국어 필드를 검색을 위해 인텍스 파일 작성

SELECT 
	student_number AS 번호,
    student_name AS 이름,
    korean_language AS 국어
FROM student_score.score
WHERE student_number = 1;

-- 2) 인텍스 파일을 사용한 국어 60점 이상을 출력

SELECT 
	student_number AS 번호,
    student_name AS 이름,
    korean_language AS 국어 
FROM student_score.score
WHERE korean_language >= 60;



-- AUTO_INCREMENT 초기화, 스키마 삭제 , 커밋
ALTER TABLE student_db.score AUTO_INCREMENT=1;


DROP SCHEMA student_score;
DELETE FROM student_score.score WHERE student_number = 1;

COMMIT;