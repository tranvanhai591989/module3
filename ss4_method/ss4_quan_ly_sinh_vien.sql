create database ss4_quan_ly_sinh_vien;

create table class(
class_id int auto_increment primary key,
class_name varchar(50),
star_date date,
`status` bit 
);

create table student(
student_id int auto_increment primary key,
student_name varchar(50),
address varchar(50),
phone varchar(50),
`status` bit,
class_id int,
foreign key(class_id) references class(class_id));

create table `subject`(
sub_id int auto_increment primary key,
sub_name varchar(50) not null,
credit tinyint not null default 1 check (credit>=1),
`status` bit default 1
);

create table mark(
mark_id int auto_increment primary key,
sub_id int not null ,
student_id int not null ,
mark float default 0 check (mark between 0 and 100),
exam_time TINYINT DEFAULT 1,
UNIQUE (sub_id, student_id),
FOREIGN KEY (sub_id) REFERENCES `subject` (sub_id),
FOREIGN KEY (student_id) REFERENCES student (student_id)
);

insert into class(class_name,star_date,`status`) values
('a1','2008-12-20',1),
('a2`','2008-12-22',1),
('b3',curdate(),0);

insert into student(student_name,address,phone,`status`,class_id) values
('Hung','Ha noi','0912113113',1,1),
('Hoa','Hai phong',null,1,1),
('Manh','HCM','0123123123',0,2);

insert into `subject`(sub_name,credit,`status`) values
('cf',5,1),
('c',6,1),
('hdj',5,1),
('rdbms',10,1);

insert into mark(sub_id ,student_id,mark ,exam_time) values
(1,1,8.0,1),
(1,2,10,2),
(2,1,12,1);

select *from student where student_name like 'H%';

select*from class where month(star_date)= '12';

select*from  `subject` where credit between 3 and 5;

set sql_safe_updates =0;
update student set class_id =2 where student_name = 'Hung';

select student.student_name,`subject`.sub_name,mark from  mark 
join student on student.student_id = mark.student_id
join `subject` on `subject`.sub_id = mark.sub_id
order by mark desc, student_name ;



