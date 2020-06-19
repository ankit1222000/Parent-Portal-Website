create table login
(
SNo  int  auto_increment primary key,
Rollnumber  int  not null,
Name varchar(30) not null,
Password varchar(30) not null,
special varchar(30) not null
)engine=InnoDB;
