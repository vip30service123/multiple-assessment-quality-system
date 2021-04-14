CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertSemester`(SCode VARCHAR(6), SName VARCHAR(50), AYCode VARCHAR(6))
BEGIN
    INSERT INTO program (SCode, SName, AYName) VALUES (SCode, SName, AYName);
END