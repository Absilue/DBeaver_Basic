-- 설명 / comments

-- 1.db 생성 : ctrl + enter 실행

create database shop2

use shop2 -- shop2 선택

-- 2. table 생성

create table member (
	id varchar(100),
	pw varchar(100),
	name varchar(100),
	tel varchar(100)
)

-- 어떤 데이터를 저장할지 정의하는 문법 --> Date Definition Language(DDL)


-- 아래부터는 데이터를 어떻게 변경할지 조작하는 문법 --> Date Manipulation Language(DML)
-- 3. data 넣기 - 수정 검색 삭제
-- varchar == String

-- data 넣기

insert into member values ('100', '100', 'choi','011')

insert into member values ('200', '200', 'choi','011')

insert into member values ('300', '300', 'choi','011')

select * from member

-- data 수정

update member set tel = '999' where id = '100'
-- id가 100인 사람의 tel을 999로 변경

update member set name = 'kim' where id = '200'
-- id가 200인 사람의 name을 kim으로 변경

-- data 삭제
-- 조건에서 and, or 그대로 사용

delete from member where id = '300'
-- id가 300인 사람의 정보를 지워라

delete from member where id = '200' and tel = '011'
-- id가 200인 사람의 정보를 지워라

select id, tel, name from member
