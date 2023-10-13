create database lol

use lol

create table player(
	id varchar(100),
	name varchar(100),
	rate varchar(100),
	tier varchar(100)
)

insert into player values ('1', '봉선화의꽃말은', '49','Platinum 3')

insert into player values ('2', '마법소녀 강수진', '38','Platinum 4')

insert into player values ('3', '듕귤듕귤', '47','Diamond 3')

select * from player

select name, rate  from player

select name  from player where rate = '38'

update player set rate = '62', tier = 'Diamond 2' where name = '봉선화의꽃말은'

delete from player where name = '마법소녀 강수진'

select * from player

-- ----------------------------------

create table player2(
	id varchar(100),
	name varchar(100),
	day varchar(100),
	cham varchar(100),
	kda varchar(100)
)

insert into player2 values ('1', '봉선화의꽃말은', '10.12','Lux','2.38')

insert into player2 values ('2', '마법소녀 강수진', '10.12','Rell','4.19')

insert into player2 values ('3', '듕귤듕귤', '10.13','ellis','5.05')

select * from player2

select name, cham, kda from player2

select name  from player2 where kda = '5.05'

update player2  set kda = '9.65', cham = 'nocturne' where name = '마법소녀 강수진'

select * from player2
