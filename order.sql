use zomato;
create table zomato.userr(
id int not null,
name varchar(45)  not null,
address varchar(30) primary key
);

select * from zomato.userr;

insert into zomato.userr( id, name, address) values(1, 'sujitha', 'kesanupalli'), (2, 'anusha', 'guntur');

create table zomato.userorder(
id  int primary key auto_increment,
ordername varchar(30) null,
orderprice int null,
orderaddress varchar(30)

);

alter table zomato.userorder
add constraint fk foreign key (orderaddress) references zomato.userr(address);

insert into zomato.userorder(ordername, orderprice, orderaddress)
 values('dress', 1200, 'guntur'), 
 ('frock', 1800, 'hyd');
select * from zomato.userorder;

select * from zomato.userr as usr 
inner join zomato.userorder as usrorder on address = usrorder.orderaddress;

select usr.name, usrorder.orderprice from zomato.userr as usr
inner join zomato.userorder as usrorder on address = usrorder.orderaddress;

select * from zomato.userr as usr 
left join zomato.userorder as usrorder on address = usrorder.orderaddress;

select * from zomato.userr as usr 
right  join zomato.userorder as usrorder on address = usrorder.orderaddress;