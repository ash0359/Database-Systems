--Name: Ashammeet Gill Student Number: 3147996
CREATE TABLE    Person(
      Name     varchar  (15) NOT NULL,
      Id      int   NOT NULL,
      Sdate     date   NULL,
      Suite      int   NOT NULL,
      StreetNumber int   NOT NULL,
      StreetName VARCHAR(255) NOT NULL,
      City     varchar  (15) NOT NULL,
PRIMARY KEY  (Id)
) ;

CREATE TABLE Apartment (
    Sdate DATE NULL,
    Suite INT NOT NULL,
    StreetNumber INT NOT NULL,
    StreetName VARCHAR(255) NOT NULL,
    City VARCHAR(15) NOT NULL,
    PRIMARY KEY (Suite, StreetNumber, StreetName, City),
    UNIQUE (Suite, StreetNumber, StreetName, City) -- Unique constraint for the foreign keys
);

CREATE TABLE    Company(
      Name     varchar  (15) NOT NULL,
      Suite      int   NOT NULL,
      StreetNumber int   NOT NULL,
      StreetName VARCHAR(255) NOT NULL,
      City     varchar  (30) NOT NULL,
PRIMARY KEY  (Name)
) ;

ALTER TABLE Company
ADD CONSTRAINT ownedby FOREIGN KEY (Suite, StreetNumber, StreetName, City)
REFERENCES Apartment (Suite, StreetNumber, StreetName, City);

ALTER TABLE Person
ADD CONSTRAINT livesin FOREIGN KEY (Suite, StreetNumber, StreetName, City)
REFERENCES Apartment (Suite, StreetNumber, StreetName, City);

INSERT INTO Apartment (Sdate,Suite,StreetNumber, StreetName, City ) VALUES ('1988-12-30',101,1,'peg', 'Winnipeg');
INSERT INTO Apartment (Sdate,Suite,StreetNumber, StreetName, City ) VALUES ('1967-05-05',99,2,'tor', 'Toronto');
INSERT INTO Apartment (Sdate,Suite,StreetNumber, StreetName, City ) VALUES ('1988-01-04',103,3,'cal', 'Calgary');
INSERT INTO Apartment (Sdate,Suite,StreetNumber, StreetName, City ) VALUES ('1986-04-05',105,4,'pegion', 'Winnipeg');
INSERT INTO Apartment (Sdate,Suite,StreetNumber, StreetName, City ) VALUES ('1988-10-10',107,8,'hous', 'Houston');
INSERT INTO Apartment (Sdate,Suite,StreetNumber, StreetName, City ) VALUES ('1990-08-02',104,5,'los', 'Los Angeles');
INSERT INTO Apartment (Sdate,Suite,StreetNumber, StreetName, City ) VALUES ('1970-01-05',108,7,'mia', 'Miami');

INSERT INTO Company (Name,Suite,StreetNumber, StreetName, City ) VALUES ('google',103,3,'cal', 'Calgary');
INSERT INTO Company (Name,Suite,StreetNumber, StreetName, City ) VALUES ('apple',101,1,'peg', 'Winnipeg');
INSERT INTO Company (Name,Suite,StreetNumber, StreetName, City ) VALUES ('microsoft',105,4,'pegion', 'Winnipeg');
INSERT INTO Company (Name,Suite,StreetNumber, StreetName, City ) VALUES ('nvidia',99,2,'tor', 'Toronto');

INSERT INTO Person (Name,Sdate,Id,Suite, StreetNumber, StreetName, City ) VALUES ('West','1970-01-05',1,108,7,'mia', 'Miami');
INSERT INTO Person (Name,Sdate,Id,Suite, StreetNumber, StreetName, City ) VALUES ('Russ','1990-08-02',2,104,5,'los', 'Los Angeles');
INSERT INTO Person (Name,Sdate,Id,Suite, StreetNumber, StreetName, City ) VALUES ('Meet','1988-10-10',3,107,8,'hous', 'Houston');
