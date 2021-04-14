CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertProgram`(PCode VARCHAR(6), PName VARCHAR(50))
BEGIN
    INSERT INTO program (PCode, PName) VALUES (PCode, PName);
END