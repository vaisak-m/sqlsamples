-- use jibydb;

create table address(
id int auto_increment primary key,
Name varchar(50) not null,
Address varchar(250),
PinCode int(6) not null,
user_id int
-- constraint PK_Address_Id primary key (id) -- or primary key(id)
-- unique key(name, user_id)-- include both name and user id as unique 
-- constraint FK_Address_User_Id foreign key (user_id)
-- references users(id)  on delete cascade -- delete from child if deleted from parent.
);

alter table address add constraint unq_Address_Name_User_Id
unique (Name, user_id);
-- select * from address;
-- drop table address;

alter table address add constraint FK_Address_User_Id foreign key (user_id)
references users(id) ;-- on delete cascade

select * from address;

select * from address where user_id=(
	select id from users where email='user2@mail.com') -- select adress of a particular user using email.
    
select * from users where id=(
	select user_id from(
		select user_id, count(id) as total
        from address group by user_id order by total desc limit 1) as temp) -- to select user with more address.