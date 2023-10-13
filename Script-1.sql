use shop2

create table product3(
	id varchar(100),
	name varchar(100),
	content varchar(100),
	price int,
	company varchar(100),
	img varchar(100)
)

insert into product3  values ('100', 'shoes1', 'fun shoes1','1000', 'c100', '1.png')

insert into product3  values ('101', 'shoes2', 'fun shoes2','2000', 'c200', '2.png')

insert into product3  values ('102', 'shoes3', 'fun shoes3','3000', 'c300', '3.png')

insert into product3  values ('103', 'shoes4', 'fun shoes4','4000', 'c100', '4.png')

select * from product3

select name, content  from product3 where id = '100'

select price  from product3 where id = '102'

update product3  set price = '5000' where name = 'shoes1'

update product3  set company = 'c555' where name = 'shoes2'

update product3  set name = 'fun', price = '9999' where id = '103'

delete from product3 where id = '101'

delete from product3 where price = '3000' or img = '4.png'

delete from product3

select * from product3

