CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertClass`(CCode VARCHAR(6), CName VARCHAR(50), Size INT, MCode VARCHAR(6), SCode VARCHAR(6))
BEGIN
    INSERT INTO lecturer (CCode, CName, Size, MCode, SCode) VALUES (CCode, CName, Size, MCode, SCode);
END