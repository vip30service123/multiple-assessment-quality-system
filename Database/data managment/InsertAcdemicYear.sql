CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertAcdemicYear`(AYCode VARCHAR(6), AYName VARCHAR(50))
BEGIN
    INSERT INTO academic_year (AYCode, AYName) VALUES (AYCode, AYName);
END