CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoYearFac`()
BEGIN
SELECT AFCode,AYName,FName
FROM Aca_Faculty
ORDER BY AFCode;
END
