create schema `student-management`;
use  `student-management`;
create table `student-management`.`class`(
`id` int not null,
`name` varchar(45) null);

create table `student-management`.`teacher`(
`id` int not null,
`name` varchar(45) null,
`age` int not null,
`country` varchar(45) null,
primary key (`id`));

