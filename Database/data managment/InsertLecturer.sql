CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertLecturer`(LCode VARCHAR(6), LName VARCHAR(50), CCode VARCHAR(6))
BEGIN
    INSERT INTO lecturer (LCode, LName, CCode) VALUES (LCode, LName, CCode);
END