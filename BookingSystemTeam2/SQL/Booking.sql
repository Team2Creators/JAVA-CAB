Create schema SA46Team2;

Use  SA46Team2;

CREATE TABLE user (
  userID varchar(10) NOT NULL,
  firstName varchar(45) NOT NULL,
  lastName varchar(45) NOT NULL,
  age int(11) NOT NULL,
  address varchar(100) NOT NULL,
  phone int(11) NOT NULL,
  gender varchar(6) NOT NULL,
  password varchar(45) NOT NULL,
  email varchar(45) NOT NULL,
  memberID varchar(10) NOT NULL,
  status varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (userID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE facility (
  facilityID varchar(10) NOT NULL,
  facilityName varchar(45) NOT NULL,
  status varchar(45) NOT NULL,
  PRIMARY KEY (facilityID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE transaction (
  transactionID int(11) NOT NULL,
  userID varchar(45) NOT NULL,
  facilityID varchar(45) NOT NULL,
  bookingDate date NOT NULL,
  bookingTime varchar(45) NOT NULL,
  status varchar(45) NOT NULL,
  PRIMARY KEY (transactionID),
  foreign key userID (userID) references  user (userID),
   foreign key facilityID (facilityID) references  facility (facilityID)
  )