use company

select * from product3 
order by price desc

select * from product3
order by company

select distinct company from product3

select price * 5 as 'pirce5' from product3

select name, company from product3
where price = 5000

select name, price, company from product3
where price between 3000 and 6000

select * from product3
where company != 'c100'

select * from product3
where company = 'c100' or company = 'c200'

select * from product3
where name like '%4'

select * from product3
where content like '%food%'

update product3 
set content = 'sold out'
where price = 5000

select * from product3

update product3 
set img = '0.png', price = '10000'
where id = '100' or id = '102'

select * from product3

delete from product3 
-- data 삭제
where company = 'c100'

drop table product3 
-- table 삭제(스키마 + data)


-- --------------------
-- 주요 함수(문자함수)
-- selcet(검색)의 결과는 항상 table이므로 항상 항목명과 값을 가지고 있음

select concat(empno, ename) as newname from emp
-- concat( ) ==> (A,B) A와 B를 연결해서 출력해줌
-- 항목명은 A+B로 출력
-- 이 경우 항목명이 지저분하므로 보통 concat(A,B) as C로 항목명을 따로 정리함

select length (empno) as count_name from emp
-- length ( ) ==> ( )안의 항목명의 글자수를 출력해줌

select replace (ename, 'E', 'EEE') from emp
-- replace (A, B, C) ==> ( )안의 항목명의 B를 C로 바꿔줌

select now()
-- now ( ) ==> 현재 시간을 출력해줌

select now(), year(now())
-- year(now( )) ==> 현재 연도를 출력해줌

select sal, comm, sal + comm from emp
-- sal + comm의 경우 두 항목중 한개의 데이터라도 null 값이 있으면 모두 null로 출력되는 문제가 발생
-- null은 연산에 포함되면 X ==> 연산을 하기전에 항목에 남아있는 null을 미리 0으로 변경해주어야 함

update emp
set comm = 0
where comm is null
-- 숫자의 경우 null을 0으로 변경

select sal, comm, sal + comm from emp

update emp
set ename = null
where EMPNO = 7369

select * from emp

select concat(ename, job) from emp
-- ename + job의 경우 두 항목중 한개의 데이터라도 null 값이 있으면 모두 null로 출력되는 문제가 발생

update emp
set ename = ''
where ename is null
-- 문자의 경우 null을 공백으로 변경

select concat(ename, job) from emp

