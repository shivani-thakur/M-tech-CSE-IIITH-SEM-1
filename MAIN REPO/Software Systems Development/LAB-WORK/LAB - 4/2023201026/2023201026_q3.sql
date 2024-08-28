USE CUSTOMER_DB;

DROP PROCEDURE details;
DELIMITER $$
CREATE PROCEDURE details()
BEGIN
DECLARE detail CURSOR FOR 
SELECT CUST_NAME , CUST_COUNTRY , CUST_GRADE
FROM customer 
WHERE AGENT_CODE LIKE "A00";

DECLARE cName VARCHAR(255);
DECLARE Country VARCHAR(255);
DECLARE Grades INT;

OPEN detail;
FETCH NEXT FROM detail INTO CName, Country, Grades;
lstart : LOOP
#WHILE FETCH_STATUS = 0
#BEGIN 
#	SELECT 'Name : '+ CName +', Country : '+ Country + ', Grades : ' + Grades;
    
    FETCH NEXT FROM detail INTO cName, Country, Grades;
    if lastcolumn = 1 then
    leave lstart;
    end if;
    select cName,Country,Grades;
end loop lstart;
# END;

CLOSE detail;
END $$
DELIMITER ;
