CREATE DEFINER=`root`@`localhost` PROCEDURE `StoreQuestionnaireDetail`(class VARCHAR(10), 
lecturer VARCHAR(10), attendance VARCHAR(10), gender VARCHAR(10), question_1 VARCHAR(10), 
question_2 VARCHAR(10), question_3 VARCHAR(10), question_4 VARCHAR(10), question_5 VARCHAR(10), 
question_6 VARCHAR(10), question_7 VARCHAR(10), question_8 VARCHAR(10), question_9 VARCHAR(10), 
question_10 VARCHAR(10), question_11 VARCHAR(10), question_12 VARCHAR(10), question_13 VARCHAR(10), 
question_14 VARCHAR(10), question_15 VARCHAR(10), question_16 VARCHAR(10), question_17 VARCHAR(10), 
question_18 VARCHAR(500))
BEGIN

    if class is NULL then 
		set class = '%';
	end if;

    if lecturer is NULL then 
		set lecturer = '%';
	end if;

    if attendance is NULL then 
		set attendance = '%';
	end if;

    if gender is NULL then 
		set gender = '%';
	end if;

    if question_1 is NULL then 
		set question_1 = '%';
	end if;

    if question_2 is NULL then 
		set question_2 = '%';
	end if;

    if question_3 is NULL then 
		set question_3 = '%';
	end if;

    if question_4 is NULL then 
		set question_4 = '%';
	end if;

    if question_5 is NULL then 
		set question_5 = '%';
	end if;

    if question_6 is NULL then 
		set question_6 = '%';
	end if;

    if question_7 is NULL then 
		set question_7 = '%';
	end if;

    if question_8 is NULL then 
		set question_8 = '%';
	end if;

    if question_9 is NULL then 
		set question_9 = '%';
	end if;

    if question_10 is NULL then 
		set question_10 = '%';
	end if;

    if question_11 is NULL then 
		set question_11 = '%';
	end if;

    if question_12 is NULL then 
		set question_12 = '%';
	end if;

    if question_13 is NULL then 
		set question_13 = '%';
	end if;

    if question_14 is NULL then 
		set question_14 = '%';
	end if;
 
    if question_15 is NULL then 
		set question_15 = '%';
	end if;
 
    if question_16 is NULL then 
		set question_16 = '%';
	end if;

    if question_17 is NULL then 
		set question_17 = '%';
	end if;

    if question_18 is NULL then 
		set question_18 = '%';
	end if;
	
    INSERT INTO questionaire (CCode, LCode, attend, gender, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, 
    Q11, Q12, Q13, Q14, Q15, Q16, Q17, Q18) 
    VALUES(class, lecturer, attendance, gender, question_1, question_2, question_3, question_4, question_5, 
    question_6, question_7, question_8, question_9, question_10, question_11, question_12, question_13, 
    question_14, question_15, question_16, question_17, question_18);
END