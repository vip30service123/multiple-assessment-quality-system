
INSERT INTO `pedatabase`.`academic_year` (`AYCode`, `AYName`) VALUES ('A02012', '2012');
	INSERT INTO `pedatabase`.`academic_year` (`AYCode`, `AYName`) VALUES ('A02013', '2013');
	INSERT INTO `pedatabase`.`academic_year` (`AYCode`, `AYName`) VALUES ('A02014', '2014');
	INSERT INTO `pedatabase`.`academic_year` (`AYCode`, `AYName`) VALUES ('A02015', '2015');
	INSERT INTO `pedatabase`.`academic_year` (`AYCode`, `AYName`) VALUES ('A02016', '2016');
	INSERT INTO `pedatabase`.`faculty` (`FCode`, `FName`) VALUES ('F00001', 'Social');
	INSERT INTO `pedatabase`.`faculty` (`FCode`, `FName`) VALUES ('F00002', 'Economic');
	INSERT INTO `pedatabase`.`faculty` (`FCode`, `FName`) VALUES ('F00003', 'Engineering');
	INSERT INTO `pedatabase`.`faculty` (`FCode`, `FName`) VALUES ('F00004', 'Information Technology');
	INSERT INTO `pedatabase`.`faculty` (`FCode`, `FName`) VALUES ('F00005', 'Art');
	INSERT INTO `pedatabase`.`semester` (`SCode`, `SName`, `AYCode`) VALUES ('SS2012', 'Summer Semester 2012', 'A02012');
	INSERT INTO `pedatabase`.`semester` (`SCode`, `SName`, `AYCode`) VALUES ('WS2012', 'Winter Semester 2012', 'A02012');
	INSERT INTO `pedatabase`.`semester` (`SCode`, `SName`, `AYCode`) VALUES ('SS2013', 'Summer Semester 2013', 'A02013');
	INSERT INTO `pedatabase`.`semester` (`SCode`, `SName`, `AYCode`) VALUES ('WS2013', 'Winter Semester 2013', 'A02013');
	INSERT INTO `pedatabase`.`semester` (`SCode`, `SName`, `AYCode`) VALUES ('SS2014', 'Summer Semester 2014', 'A02014');
	INSERT INTO `pedatabase`.`semester` (`SCode`, `SName`, `AYCode`) VALUES ('WS2014', 'Winter Semester 2014', 'A02014');
	INSERT INTO `pedatabase`.`semester` (`SCode`, `SName`, `AYCode`) VALUES ('SS2015', 'Summer Semester 2015', 'A02015');
	INSERT INTO `pedatabase`.`semester` (`SCode`, `SName`, `AYCode`) VALUES ('WS2015', 'Winter Semester 2015', 'A02015');
	INSERT INTO `pedatabase`.`semester` (`SCode`, `SName`, `AYCode`) VALUES ('SS2016', 'Summer Semester 2016', 'A02016');
	INSERT INTO `pedatabase`.`semester` (`SCode`, `SName`, `AYCode`) VALUES ('WS2016', 'Winter Semester 2016', 'A02016');
    
    INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('1', 'A02012', 'F00001');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('2', 'A02012', 'F00002');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('3', 'A02012', 'F00003');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('4', 'A02012', 'F00004');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('5', 'A02012', 'F00005');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('6', 'A02013', 'F00001');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('7', 'A02013', 'F00002');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('8', 'A02013', 'F00003');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('9', 'A02013', 'F00004');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('10', 'A02013', 'F00005');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('11', 'A02014', 'F00001');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('12', 'A02014', 'F00002');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('13', 'A02014', 'F00003');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('14', 'A02014', 'F00004');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('15', 'A02014', 'F00005');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('16', 'A02015', 'F00001');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('17', 'A02015', 'F00002');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('18', 'A02015', 'F00003');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('19', 'A02015', 'F00004');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('20', 'A02015', 'F00005');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('21', 'A02016', 'F00001');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('22', 'A02016', 'F00002');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('23', 'A02016', 'F00003');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('24', 'A02016', 'F00004');
	INSERT INTO `pedatabase`.`aca_faculty` (`AFCode`, `AYCode`, `FCode`) VALUES ('25', 'A02016', 'F00005');
    
	INSERT INTO `pedatabase`.`program` (`PCode`, `PName`) VALUES ('P10001', 'History');
	INSERT INTO `pedatabase`.`program` (`PCode`, `PName`) VALUES ('P10002', 'Geography');
	INSERT INTO `pedatabase`.`program` (`PCode`, `PName`) VALUES ('P20001', 'Financial');
	INSERT INTO `pedatabase`.`program` (`PCode`, `PName`) VALUES ('P20002', 'Business');
	INSERT INTO `pedatabase`.`program` (`PCode`, `PName`) VALUES ('P30001', 'Automation');
	INSERT INTO `pedatabase`.`program` (`PCode`, `PName`) VALUES ('P30002', 'Mechanic');
	INSERT INTO `pedatabase`.`program` (`PCode`, `PName`) VALUES ('P40001', 'Software');
	INSERT INTO `pedatabase`.`program` (`PCode`, `PName`) VALUES ('P40002', 'Artificial Intelligence');
	INSERT INTO `pedatabase`.`program` (`PCode`, `PName`) VALUES ('P50001', 'Drawing and Painting');
	INSERT INTO `pedatabase`.`program` (`PCode`, `PName`) VALUES ('P50002', 'Sculpture');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MWW100', 'World War I');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MWW200', 'World War II');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MM0000', 'Mapping');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MW0000', 'Weather');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MIT000', 'Investment Theory');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MCF000', 'Coporate Finance');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MMA000', 'Management');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MMAT00', 'Mathematic');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MAA000', 'Advance Automation');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MITA00', 'Intro to Automation');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MH0000', 'Hardware');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MP0000', 'Physic');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MS0000', 'Syntax');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MFL000', 'Formal Language');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MML000', 'Machine Learning');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MDL000', 'Deep Learning');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MD0000', 'Drawing');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MPA000', 'Painting');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MT0000', 'Theoretical Sculpture');
	INSERT INTO `pedatabase`.`module` (`MCode`, `MName`) VALUES ('MSE000', 'Sculpting Exercise');
    
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('1', '1', 'P10001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('2', '2', 'P20001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('3', '3', 'P30001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('4', '4', 'P40001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('5', '5', 'P50001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('6', '7', 'P20001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('7', '7', 'P20002');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('8', '8', 'P30002');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('9', '9', 'P40001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('10', '10', 'P50001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('11', '11', 'P10001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('12', '11', 'P10002');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('13', '12', 'P20001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('14', '12', 'P20002');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('15', '13', 'P30001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('16', '13', 'P30002');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('17', '14', 'P40001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('18', '14', 'P40002');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('19', '15', 'P50001');
	INSERT INTO `pedatabase`.`aca_fac_pro` (`PFCode`, `AFCode`, `PCode`) VALUES ('20', '15', 'P50002');
    
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('11', 'MWW100');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('11', 'MWW200');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('12', 'MM0000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('12', 'MW0000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('13', 'MIT000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('13', 'MCF000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('14', 'MMA000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('14', 'MMAT00');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('15', 'MAA000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('15', 'MITA00');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('16', 'MH0000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('16', 'MP0000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('17', 'MS0000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('17', 'MFL000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('18', 'MML000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('18', 'MDL000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('19', 'MD0000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('19', 'MPA000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('20', 'MT0000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('20', 'MSE000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('1', 'MWW100');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('2', 'MCF000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('3', 'MAA000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('4', 'MS0000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('5', 'MPA000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('6', 'MCF000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('7', 'MMA000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('8', 'MH0000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('9', 'MFL000');
	INSERT INTO `pedatabase`.`aca_pro_mod` (`PFCode`, `MCode`) VALUES ('10', 'MPA000');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00001', '001', '50', 'MWW100', 'SS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00002', '002', '50', 'MWW200', 'SS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00003', '003', '50', 'MM0000', 'SS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00004', '004', '50', 'MW0000', 'SS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00005', '005', '50', 'MIT000', 'SS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00006', '006', '50', 'MCF000', 'SS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00007', '007', '50', 'MMA000', 'SS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00008', '008', '50', 'MMAT00', 'SS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00009', '009', '50', 'MMAT00', 'SS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00010', '010', '50', 'MITA00', 'SS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00011', '011', '50', 'MH0000', 'WS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00012', '012', '50', 'MP0000', 'WS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00013', '013', '50', 'MS0000', 'WS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00014', '014', '50', 'MFL000', 'WS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00015', '015', '50', 'MML000', 'WS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00016', '016', '50', 'MDL000', 'WS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00017', '017', '50', 'MD0000', 'WS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00018', '018', '50', 'MPA000', 'WS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00019', '019', '50', 'MT0000', 'WS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00020', '020', '50', 'MSE000', 'WS2014');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00021', '021', '50', 'MWW100', 'WS2012');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00022', '022', '50', 'MCF000', 'WS2012');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00023', '023', '50', 'MAA000', 'WS2012');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00024', '024', '50', 'MS0000', 'SS2012');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00025', '025', '50', 'MPA000', 'SS2012');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00026', '026', '50', 'MCF000', 'SS2013');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00027', '027', '50', 'MMA000', 'SS2013');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00028', '028', '50', 'MH0000', 'WS2013');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00029', '029', '50', 'MFL000', 'WS2013');
	INSERT INTO `pedatabase`.`class` (`CCode`, `CName`, `Size`, `MCode`, `SCode`) VALUES ('C00030', '030', '50', 'MPA000', 'WS2013');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00001', 'Joe Duck', 'C00002');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00002', 'Lyrai Luna', 'C00018');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00003', 'Lina Mirana', 'C00010');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00004', 'Jim Raynor', 'C00006');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00005', 'Elizabeth Ezalor', 'C00017');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00006', 'Sarah Kerrigan', 'C00009');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00007', 'Sylvannas Windrunner', 'C00014');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00008', 'Tim Johnson', 'C00015');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00009', 'Jones McDonald', 'C00029');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00010', 'Hoang Cao Duy', 'C00023');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00011', 'Vincent Law', 'C00022');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00012', 'Anathan Pham', 'C00024');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00013', 'Richard Bradley', 'C00023');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00014', 'Ngo Minh Thai', 'C00025');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00015', 'Sione Aldric', 'C00016');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00016', 'Artoria Pendragon', 'C00011');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00017', 'Le Truong Duong', 'C00026');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00018', 'Alexei Stukov', 'C00012');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00019', 'Nolva Carpenter', 'C00030');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00020', 'Tom Jerry', 'C00019');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00021', 'Hoang Cao Duy', 'C00020');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00022', 'Vincent Law', 'C00001');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00023', 'Anathan Pham', 'C00028');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00024', 'Richard Bradley', 'C00005');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00025', 'Ngo Minh Thai', 'C00013');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00026', 'Sione Aldric', 'C00008');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00027', 'Joe Duck', 'C00021');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00028', 'Lyrai Luna', 'C00003');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00029', 'Lina Mirana', 'C00027');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00030', 'Alexei Stukov', 'C00007');
	INSERT INTO `pedatabase`.`lecturer` (`LCode`, `LName`, `CCode`) VALUES ('L00031', 'Nolva Carpenter', 'C00004');

