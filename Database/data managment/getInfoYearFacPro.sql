CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoYearFacPro`()
BEGIN
SELECT PFCode
FROM aca_fac_pro
ORDER BY PFCode;
END