create table Student_Detail
(
SNo  int  auto_increment primary key,
Rollnumber  int  not null unique,
Name varchar(30) not null,
Gender char(6) not null,
Class char(5) not null,
Stream char(10) not null,
PhoneNo varchar(12) not null,
Date_of_Birth Date not null,
Father_Name varchar(30) not null,
Mother_Name varchar(30) not null,
Address varchar(100) not null,
State char(20) not null,
City char(20) not null,
Country char(20) not null
)engine=InnoDB;
