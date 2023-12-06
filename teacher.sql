use zomato;
create table zomato.student(
id int primary key auto_increment,
stname  varchar(30) null,
rollno  int not null,
stclass int null,
stcountry varchar(40) default ('india')
);
drop table zomato.student;

use zomato;
create table zomato.teacher(
id int primary key auto_increment,
tname varchar(30) null,
tsubject varchar(30) not null,
taddress varchar(50) null


);
drop table zomato.teacher;
select * from teacher;
alter table zomato.teacher
add column student_id int;

alter table zomato.teacher
add constraint stu_id foreign key(student_id) references zomato.student(id);
	
insert into zomato.student(stname, rollno, stclass) values('sujitha', 20, 10),('madhuha', 21, 11), ('anusha', 22, 12);
select * from zomato.student;

insert into zomato.teacher(tname, tsubject, taddress) values('durga', 'maths', 'hyd'),('lakshmi', 'physics', 'guntur');

select * from zomato.student as stu
join zomato.teacher as tech on stu.id = tech.student_id;
select * from zomato.student as stu
left join zomato.teacher as tech on stu.id = tech.student_id;
select * from zomato.student as stu
right join zomato.teacher as tech on stu.id = tech.student_id;

select stu.id, tech.student_id from zomato.student as stu
join zomato.teacher as tech on stu.id = tech.student_id;
