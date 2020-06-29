CREATE TABLE users
(id integer identity primary key,
 username varchar(100),
 email varchar(255),
 firstname varchar(100),
 lastname varchar(100),
 occupation varchar(100),
 employer varchar(100),
 zipcode varchar(10),
 dob date,
 created timestamp,
 updated timestamp);
