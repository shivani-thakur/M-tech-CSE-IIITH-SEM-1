DROP PROCEDURE divi;
DELIMITER $$
CREATE PROCEDURE divi(IN a float , IN b float , IN r float)
BEGIN
SET r = a/b;
select r;
END $$
DELIMITER ;

call divi(25.0,5.0,0.0);