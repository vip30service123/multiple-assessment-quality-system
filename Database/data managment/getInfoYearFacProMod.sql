CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoYearFacProMod`()
BEGIN
SELECT PFCode, MCode
FROM aca_pro_mod
ORDER BY PFCode, MCode;
END