-- company db가 선택된 상태

-- use company

CREATE TABLE SALGRADE
(
  GRADE  int primary key,
  LOSAL  int,
  HISAL  int
)

CREATE TABLE DEPT
(
  DEPTNO  int primary key,
  DNAME   VARCHAR(100),
  LOC     VARCHAR(100)
)

CREATE TABLE EMP
(
  EMPNO     int primary key,
  ENAME     VARCHAR(100),
  JOB       VARCHAR(100),
  MGR       int,
  HIREDATE  DATE,
  SAL       decimal(7,2),
  COMM      decimal(7,2),
  DEPTNO    int
)

desc salgrade

desc dept

desc emp 

-- 파일의 위치를 알고 싶으면 alt + enter

select * from emp
-- select 컬럼명(열이름), * ==> all columns

select distinct empno from emp
-- distinct == unique ==> 중복된 값을 제거하는 명령어

select empno from emp where deptno = 10
-- where + 조건
-- sql은 대소문자를 구분하지 X
-- 내부적으로 처리할때 모두 대문자로 변경해서 실행하기 때문
-- oracle에서는 대문자로 변경해서 실행 ==> 버그가 종종 발생
-- oracle에서는 모두 대문자로 쓰는것을 권장!

select sal * 12 as 'yearsal' from emp
-- sal 값에 12를 곱한 데이터를 출력
-- 간단한 연산도 select 구문안에서 가능
-- as '변경하고 싶은 컬럼명'을 통해 컬럼명도 변경 가능
-- as == alias(별칭)

select * from emp
order by sal
-- order by (컬럼명) ==> 해당 컬럼명의 값을 작은 --> 큰 순서대로 정렬(오름차순)

select * from emp
where job = 'MANAGER'
-- job에 있는 MANAGER는 칼럼명이 아니므로 대소문자를 반드시 구분해야함
order by sal desc 
-- order by (컬럼명) desc ==> 해당 컬럼명의 값을 큰 --> 작은 순서대로 정렬(내림차순)

select * from emp
where DEPTNO = 30

select * from emp
where DEPTNO = 30 and job = 'SALESMAN'
-- and 조건 모두를 만족하는 경우

select * from emp
where DEPTNO = 30 or job = 'SALESMAN'
-- or 조건 중에 하나라도 만족하는 경우

select * from emp
where sal >= 3000

select * from emp
where sal != 3000
-- ! == not 연산자 ==> sal 값이 3000이 아닌 데이터를 출력

select distinct job from emp
-- distinct 중복 제거
-- 중복을 제거하면 데이터의 총 가짓 수를 알 수 있음

select * from emp
where job = 'CLERK' or job = 'SALESMAN' or job = 'MANAGER'

select * from emp
where job in ('CLERK', 'SALESMAN', 'MANAGER')
-- in () == ( )안에 들어간 변수명을 or로 연산처리

select * from emp
where sal between 2000 and 3000
-- between 값1 and 값2 == 값1과 값2 사이의 값들을 출력

select * from emp
where ENAME like '_L%'
-- like '- ' ==> ' '안의 _ 개수만큼 뒤에 따라오는 문자를 포함하는 값들을 출력

select * from emp
where ENAME like '%AM%'
-- AM이 앞에 있거나, 가운데 있거나, 뒤에 있거나 상관없이 AM을 포함하는 값들을 출력

select * from emp
where comm is null 
-- comm 값이 null인 값을 찾음
-- null만 앞에 is를 붙여서 사용함

