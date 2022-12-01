use dba;
create table products (
	id int not null auto_increment,
    name varchar(50) not null,
    createdBy int not null,
    brand varchar(50) not null,
    primary key(id),
    foreign key(createdBy) references user(id)
);

rename tables products to product;

insert into product (name, createdBy, brand)
values
	('ipad', 1, 'apple'),
    ('iphone', 1, 'apple'),
    ('watch', 2, 'apple'),
    ('macbook', 1, 'apple'),
    ('imac', 3, 'apple'),
    ('ipad mini', 2, 'apple');
    
select * from product;

select u.id, u.email, p.name from user u left join product p on u.id = p.createdBy;

select u.id, u.email, p.name from user u right join product p on u.id = p.createdBy;

select u.id, u.email, p.name from user u inner join product p on u.id = p.createdBy;

select u.id, u.name, p.id, p.name from user u cross join product p;

select count(id), brand from product group by brand;

select count(p.id), u.name from product p left join user u on u.id = p.createdBy group by p.createdBy;

select count(p.id), u.name from product p left join user u on u.id = p.createdBy group by p.createdBy having count(p.id) >= 2;

drop table product;
drop table animals;
drop table user;

CREATE TABLE IF NOT EXISTS `dba`.`user` (
  `id` INT NOT NULL,
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)