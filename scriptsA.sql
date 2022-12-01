use dba;
create table user (
	id int not null auto_increment,
    name varchar(50) not null,
    age int not null,
    email varchar(100) not null,
    primary key(id)
);

insert into user (name, age, email) values ('Orscar', 25, 'oscar@gmail.com');
insert into user (name, age, email) values ('Layla', 15, 'layla@gmail.com');
insert into user (name, age, email) values ('Nicolas', 36, 'nicolas@gmail.com');
insert into user (name, age, email) values ('Piggy', 7, 'piggy@gmail.com');
insert into user (name, age, email) values ('Kevin', 25, 'kevin@outlook.com');

select * from user;
select * from user limit 1;
select * from user where age > 15;
select * from user where age >= 15;
select * from user where age > 20 and email = 'nicolas@gmail.com';
select * from user where age > 20 or email = 'layla@gmail.com';
select * from user where email != 'layla@gmail.com';
select * from user where age between 15 and 30;
select * from user where email like '%outlook%';
select * from user where email like '%.outlook';
select * from user where email like 'oscar%';

select * from user order by age asc;
select * from user order by age desc;

select max(age) as older from user;
select min(age) as younger from user;

select id, name from user;
select id, name as nombre from user;

