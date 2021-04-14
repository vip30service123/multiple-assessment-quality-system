CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertFaculty`(FCode VARCHAR(6), FName VARCHAR(50))
BEGIN
    INSERT INTO faculty (FCode, FName) VALUES (FCode, FName);
END