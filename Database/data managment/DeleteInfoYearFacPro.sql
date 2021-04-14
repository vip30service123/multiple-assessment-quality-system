CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteInfoYearFacPro`(academic_year_code VARCHAR(6), faculty_code VARCHAR(6), program_code VARCHAR(7))
BEGIN
	DELETE FROM aca_fac_pro 
    WHERE AFCode LIKE (SELECT A.AFCode
						FROM aca_faculty A
                        WHERE A.AYCODE LIKE academic_year_code 
                        AND A.FCode LIKE faculty_code)
    AND PCode LIKE program_code;
END