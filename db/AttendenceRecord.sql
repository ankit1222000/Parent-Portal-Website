create table Attendence_Record
(
SNo  int  auto_increment primary key,
Rollnumber int not null,
Name varchar(30) not null,
Gender char(6) not null,
Stream char(10) not null,
Date date not null,
Status varchar(3)  not null,
Punch_time Time
 )engine=InnoDB;
