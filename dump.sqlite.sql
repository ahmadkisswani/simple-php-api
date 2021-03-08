-- TABLE
CREATE TABLE company
(
  companyid INT NOT NULL,
  companyname VARCHAR(20) NOT NULL,
  password VARCHAR(20) NOT NULL,
  companylocation VARCHAR(30) NOT NULL,
  PRIMARY KEY (companyid)
);
CREATE TABLE employee
(
  employeeid INT NOT NULL,
  firstname VARCHAR(20) NOT NULL,
  secandname VARCHAR(20) NOT NULL,
  email VARCHAR(30) NOT NULL,
  gender INT NOT NULL,
  phonenumber INT NOT NULL,
  companyid INT NOT NULL,
  PRIMARY KEY (employeeid),
  FOREIGN KEY (companyid) REFERENCES company(companyid)
);
CREATE TABLE users
(
  userid INT NOT NULL,
  password VARCHAR(15) NOT NULL,
  email VARCHAR(20) NOT NULL,
  firstname VARCHAR(20) NOT NULL,
  secondname VARCHAR(20) NOT NULL,
  gender INT NOT NULL,
  location VARCHAR(30) NOT NULL,
  companyid INT NOT NULL,
  PRIMARY KEY (userid),
  FOREIGN KEY (companyid) REFERENCES company(companyid)
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
