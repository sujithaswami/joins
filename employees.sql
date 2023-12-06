select * from employee;
insert into employee(name, empemail)values('ss','ss@gmail.com');
drop table zomato.employee;
drop table zomato.employeaddress;
insert into employeaddress(emplocation, empcity, )values('kphb', 'hyd');
SELECT * FROM zomato.employeeaddress;

select * from zomato.employee as emp
inner join zomato.employeeaddress as empadd on emp.empname = empadd.emp_name;

select * from zomato.employee as emp
left join zomato.employeeaddress as empadd on emp.empname = empadd.emp_name;

select * from zomato.employee as emp
right join zomato.employeeaddress as empadd on emp.empname = empadd.emp_name;



