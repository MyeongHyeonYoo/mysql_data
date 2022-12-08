SELECT * from buy;

SELECT * FROM member;

SELECT * 
	FROM buy
    INNER JOIN member
    ON buy.mem_id = member.mem_id
WHERE buy.mem_id = 'GRL';

SELECT * 
	FROM buy
    INNER JOIN member
    ON buy.mem_id = member.mem_id;
    
SELECT buy.mem_id, mem_name, prod_name, addr, concat(phone1, phone2) '연락처'
FROM buy
	INNER JOIN member
	ON buy.mem_id = member.mem_id;
        

SELECT m.mem_id, m.mem_name, b.prod_name, m.addr
	FROM member m
    LEFT OUTER JOIN buy b
    ON m.mem_id = b.mem_id
    ORDER BY m.mem_id;
    
SELECT DISTINCT m.mem_id, b.prod_name, m.mem_name, m.addr
	FROM member m
	LEFT OUTER JOIN buy b
    ON m.mem_id = b.mem_id
    WHERE b.prod_name IS NULL
    ORDER BY m.mem_id;