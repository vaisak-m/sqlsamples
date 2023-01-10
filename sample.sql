use jibydb;

create table users(
id int primary key auto_increment,
name varchar(50) not null,
email varchar(100) not null unique,
age int not null default 18 check(age > 18),
country varchar(10) not null default 'IN'
);

select * from users;