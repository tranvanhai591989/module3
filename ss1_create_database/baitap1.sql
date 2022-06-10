create schema `student-management`;
create table `student-management`.`student`(
`id` int not null,
`name` varchar(45) null,
`age` int not null,
`country` varchar(45) null,
primary key (`id`));

