DROP PROCEDURE IF EXISTS ifProc1;

DELIMITER $$
CREATE PROCEDURE ifProc1()
BEGIN
	IF 100 = 100 then
		SELECT '100은 100과 같다';
	END IF;
END $$
DELIMITER ;

call ifProc1();