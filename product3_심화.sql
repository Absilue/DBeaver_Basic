use company

select length (ename) as count_name from emp

select length (ename) as count_name from emp
where job = 'MANAGER'

select ename, job from emp
where comm is null

select HIREDATE  from emp
where comm is not null

select substr(ename,2) from emp
-- substr ==> ename의 두번째 글자부터 끝까지 출력

select substr(job,1,3) from emp
-- substr ==> job의 첫번째 글자부터 세번째 글자까지 출력

select replace(ename,'K','P') from emp e 
-- replace ==> ename에 들어있는 K를 P로 변경해서 출력

update emp
set ename = ''
where ename is null

update emp
set empno = 0
where empno is null || ‘:’ || 

select concat(empno,'번은 ',ename,'입니다') from emp

select month(HIREDATE), dayname(HIREDATE)  from emp

select empno, ename, comm, job,
case job
	when 'MANAGER' then 'level1'
	when 'SALESMAN' then 'level2'
	else 'level3'
	end as LEVEL_RESULT
from emp
