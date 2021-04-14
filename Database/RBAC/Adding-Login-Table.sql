CREATE TABLE Account(
	Login VARCHAR(20),
    Pass VARCHAR(20),
    PRIMARY KEY (Login)
);
CREATE TABLE User(
	Username VARCHAR(20),
    Login VARCHAR(20),
    PRIMARY KEY (Username),
    FOREIGN KEY (Login) REFERENCES Account(Login)
);
CREATE TABLE Prog_Cordinator(
	StartDate DATE,
    EndDate DATE,
    Username VARCHAR(20),
    PCode VARCHAR(50),
    
	FOREIGN KEY(Username) REFERENCES User(Username),
    FOREIGN KEY(PCode) REFERENCES program(PCode)
);
CREATE TABLE Dean(
	StartDate DATE,
    EndDate DATE,
    Username VARCHAR(20),
    FCode VARCHAR(50),
    
	FOREIGN KEY(Username) REFERENCES User(Username),
    FOREIGN KEY(FCode) REFERENCES faculty(FCode)
);
SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE lecturer ADD FOREIGN KEY (LName) REFERENCES User(Username);