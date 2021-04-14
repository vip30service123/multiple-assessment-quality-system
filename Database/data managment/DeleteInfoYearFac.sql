CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteInfoYearFac`(academic_year_code VARCHAR(6), faculty_code VARCHAR(6))
BEGIN
	
	DELETE FROM aca_faculty 
	WHERE AYCode LIKE academic_year_code 
		AND FCode LIKE faculty_code;
	
END