-- database 만들기
create database test2

-- database 선택
use test2

-- table 만들기
create table dept (
	deptno int,
	dname varchar(100),
	loc varchar(100)
)

create table emp (
	empno int,
	dname varchar(100),
	job varchar(100),
	mgr int,
	hiredate datetime,
	sal int,
	comm int,
	deptno int
)

create table student (
	id varchar(100),
	name varchar(100),
	tel varchar(100),
	deptid int,
	professor varchar(100)
)

create table professor (
	id varchar(100),
	name varchar(100),
	tel varchar(100),
	deptid int,
	addr varchar(100),
	roomno varchar(100)
)

-- data 넣기

insert into dept values ('1', '최영태', 'abc')

insert into dept values ('2', '김영태', '가나다')

-- PK

ALTER TABLE test2.dept ADD CONSTRAINT dept_pk PRIMARY KEY (deptno);

ALTER TABLE test2.emp ADD CONSTRAINT emp_pk PRIMARY KEY (empno);

ALTER TABLE test2.professor ADD CONSTRAINT professor_pk PRIMARY KEY (id);

ALTER TABLE test2.student ADD CONSTRAINT student_pk PRIMARY KEY (id);

-- FK

ALTER TABLE test2.professor ADD CONSTRAINT professor_fk FOREIGN KEY (deptid) REFERENCES test.dept(deptno);

ALTER TABLE test2.emp ADD CONSTRAINT emp_fk FOREIGN KEY (deptno) REFERENCES test.dept(deptno);

ALTER TABLE test2.student ADD CONSTRAINT student_fk FOREIGN KEY (deptid) REFERENCES test.dept(deptno);