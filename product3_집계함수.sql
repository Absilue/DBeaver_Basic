use company

select count(sal), sum(sal), avg(sal), min(sal), max(sal)
from emp
where job = 'SALESMAN'

select count(sal), sum(sal), avg(sal), min(sal), max(sal)
from emp
group by job
having count(sal) >= 4
order by job desc
-- group by ==> 그룹별로 묶을 때 사용
-- havig ==> 조건문
-- having by는 반드시 group by와 같이 써야함

-- ----------------------------------
-- 정리문제

select count(*) as 전체직원수 from emp

select count(*) from emp where deptno = 20 or mgr <= 7000

select min(sal) from emp where deptno = 20 or deptno = 10

select sum(sal), min(sal), max(sal) from emp e 

select avg(sal) from emp
group by deptno

select sum(sal) from emp
group by DEPTNO 
order by deptno

select avg(sal) from emp 
group by deptno
having avg(sal) >= 2000
order by deptno desc

select count(*), avg(sal) from emp where job = 'MANAGER'

select count(*) from emp
where ename like '%S%'

select count(*) from emp
where sal >= 3000 and comm is not null
order by sal desc
