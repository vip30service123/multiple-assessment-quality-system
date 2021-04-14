CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertModule`(MCode VARCHAR(6), MName VARCHAR(50))
BEGIN
    INSERT INTO module (MCode, MName) VALUES (MCode, MName);
END