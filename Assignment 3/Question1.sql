--Name: Ashammeet Gill Student Number: 3147996
CREATE TABLE    Element  (
	Name     varchar  (15) NOT NULL,
      Description     varchar  (15) NOT NULL,
      Type     varchar  (15) NOT NULL,
      Id      int   NOT NULL,
PRIMARY KEY  (	  id   )
) ;

CREATE TABLE    Att  (
	Derived     varchar  (15) NOT NULL,
      Type     varchar  (15) NOT NULL,
      Id      int   NOT NULL,
      Multivalued     varchar  (15) NOT NULL,
PRIMARY KEY  (	  id   )
) ;

CREATE TABLE    Rt  (
	Identifying     varchar  (15) NOT NULL,
      RoleName     varchar  (15) NOT NULL,
      Id      int   NOT NULL,
      Total      int   NOT NULL,
      Cardinality     varchar  (15) NOT NULL,
PRIMARY KEY  (	  id   )
) ;

CREATE TABLE    Et  (
	Type     varchar  (15) NOT NULL,
      RoleName     varchar  (15) NOT NULL,
      Id      int   NOT NULL,
      Total      int   NOT NULL,
      Cardinality     varchar  (15) NOT NULL,
PRIMARY KEY  (	  id   )
) ;


CREATE TABLE    Rtet  (
	  identifying     varchar  (15) NOT NULL,
      Type     varchar  (15) NOT NULL,
      Rtid      int   NOT NULL,
      Etid      int   NOT NULL,
      Total      int   NOT NULL,
      Cardinality     varchar  (15) NOT NULL,
      Rname     varchar  (15) NOT NULL,
PRIMARY KEY  (	  Rtid,Etid   )
) ;

ALTER TABLE Att  ADD constraint attachedto FOREIGN KEY(Id)
REFERENCES Element (Id);

ALTER TABLE Rtet  ADD constraint connectsto FOREIGN KEY(Rtid)
REFERENCES Rt (Id);
ALTER TABLE Rtet  ADD constraint connectsto2 FOREIGN KEY(Etid)
REFERENCES Et (Id);

ALTER TABLE Rt  ADD constraint fk1 FOREIGN KEY(Id)
REFERENCES Element (Id);

ALTER TABLE Et  ADD constraint fk2 FOREIGN KEY(Id)
REFERENCES Element (Id);
