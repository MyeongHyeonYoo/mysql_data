DROP TABLE t_member;
-- 회원 테이블 생성
create table t_member(
    id varchar(10) primary key,
    pwd varchar(10),
    name varchar(50),
    email varchar(50),
    joinDate datetime default (current_date)
);
-- 회원 정보 추가
INSERT INTO t_member
VALUES('hong', '1212', '홍길동', 'hong@gmail.com', sysdate());
INSERT INTO t_member
VALUES('lee', '1212', '이순신', 'lee@test.com', sysdate());
INSERT INTO t_member
VALUES('kim', '1212', '김유신', 'kim@jweb.com', sysdate());
COMMIT;

INSERT INTO t_member
VALUES('mysql', '111', 'sql', 'mysql@jweb.com', sysdate());

SELECT * FROM t_member;