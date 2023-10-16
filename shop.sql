use shop

show tables

desc member

insert into member values ('melon', '1234', 'melon', '010')

select * from member
-- member의 모든 컬럼을 보여주는 명령어

select id from member

select tel, id from member where id = 'melon'

insert into member values ('computer', '1111', 'com', null)

insert into member values ('computer2', '2222', 'com2', null)

select * from member

insert into member values ('ice2', '3333', 'ice2', '031', now())
-- now() 입력한 현재 시간을 알려줌

select * from member

delete from bbs

select * from bbs

insert into bbs values (null,'db3', 'fun db3', 'apple')

select * from bbs