CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoYearFac`()
BEGIN
SELECT AFCode
FROM Aca_Faculty
ORDER BY AFCode;
END