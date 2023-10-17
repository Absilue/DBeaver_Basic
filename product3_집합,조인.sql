use company

-- join : 2개 이상의 테이블을 합해서 검색
-- join 조건 ==> 하나 이상의 동일한 값의 범위를 가지는 컬럼이 양쪽 테이블에 존재해야 함
-- emp : deptno / dept : deptno

select * 
from dept d, emp e
where d.DEPTNO  = e.DEPTNO
-- select * ~ join : 2개의 테이블에 있는 모든 컬럼이 검색
-- 데이터가 필요이상으로 많아져서 실제로 많이 사용하지는 X

select d.DEPTNO, d.DNAME, e.ENAME, e.JOB 
-- select 테이블1.컬럼, 테이블2.컬럼 : 원하는 컬럼만 선택해서 검색 가능
from dept d, emp e
where d.DEPTNO  = e.DEPTNO

select d.DEPTNO, d.DNAME, e.ENAME, e.JOB 
from dept d
left outer join emp e
-- left outer join : 왼쪽에 있는 모든 컬럼의 값을 출력
on (d.DEPTNO = e.DEPTNO)
-- on ( ) : 조건

select d.DEPTNO, d.DNAME, e.ENAME, e.JOB 
from dept d
right outer join emp e
-- right outer join : 오른쪽에 있는 모든 컬럼의 값을 출력
on (d.DEPTNO = e.DEPTNO)

-- self join
select e.empno, e.ename, e2.ename, e2.SAL 
-- 직원번호, 직원이름, 관리자이름, 관리자월급
from emp e, emp e2
where e.MGR = e2.EMPNO

