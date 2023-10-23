insert into totalstudent 
values('501', '박지성', '맨체스터', '컴퓨터과', '공학관101', '데이터베이스', '공학관110', '3.5')

-- 테이블을 만들고 이상이 있는지 확인하려면 데이터를 삽입/삭제/수정 해보기

insert into totalstudent 
values('601', '손흥민', '토트넘', '컴퓨터과', null, null, null, null)

select * from totalstudent

insert into totalstudent 
values('701', '조규성', '토트넘2', '체육학과', null, null, null, null)

select * from totalstudent

-- 삽일할 때, 너무 많은 Null을 포함하고 있으면 스키마를 수정해주어야 함(삽입 이상)

update totalstudent
set 주소 = '서울' where 학생이름 = '박지성' and 강좌이름 = '자료구조'

-- 수정을 하고 나서 데이터에 이상이 있는 현상(이상 현상) --> 불일치 현상이 발생하면 정규화 실시(수정 이상)

delete from totalstudent
where 학생이름 = '김연아'
-- 데이터베이스 수강 취소

select * from totalstudent

-- 지우려고 했던 데이터가 아닌것까지 연쇄적으로 지워지는 이상현상이 발생하면 정규화 실시 ==> 연쇄삭제(삭제 이상)

select * from totalstudent
where 학생번호 = '501'

create table 학생(
	학생번호 varchar(100) null,
	학생이름 varchar(100) null,
	주소 varchar(100) null,
	학과 varchar(100) null
)

create table 강좌정보(
	강좌이름 varchar(100) null,
	강의실 varchar(100) null
)

create table 학과정보(
	학과 varchar(100) null,
	학과사무실 varchar(100) null
)

create table 성적정보(
	학생번호 varchar(100) null,
	강좌이름 varchar(100) null,
	성적 varchar(100) null
)

-- 삽입 ==> 데이터를 분리시켜, null이 생기는 삽입 이상을 없앰
insert into 학생
values ('601', '손흥민', '토트넘', '체육학과')

select * from 학생

-- 수정 ==> 데이터를 분리시켜, 데이터 불일치 현상을 없앰
update 학생
set 주소 = '서울'
where 학생이름 = '박지성'

select * from 학생

-- 삭제 ==> 데이터를 분리시켜, 삭제 이상(연쇄 삭제)현상을 없앰
select * from 학생정보

delete from 성적정보
where 학생번호 = '401'

select * from 학생

-- -----------------------------
select * from 학생

select * from 학과정보

select count(학과) as 전체학과개수 from 학과정보

-- 학생의 번호, 이름, 학과, 학과사무실 (2개의 테이블을 합쳐야 함 - join)

select * from 학생 s, 학과정보 d
where s.학과 = d.학과

select s.학생번호, s.학생이름, s.학과, d.학과사무실
from 학생 s inner join 학과정보 d
where s.학과 = d.학과 

-- 학생의 번호, 이름, 강좌이름, 성적 (학생 + 성적정보)
select s.학생번호, s.학생번호, j.강좌이름, j.성적 
-- select 검색하고 싶은 컬럼들
from 학생 s, 성적정보 j
-- from 조인하고 싶은 테이블들
where s.학생번호 = j.학생번호
-- where 조인했을때 기준이 되는 컬럼

-- 학생의 번호, 과목명, 강의실, 성적 (성적정보 + 강좌정보)
select j.학생번호, j.강좌이름 , l.강의실, j.성적 
from 성적정보 j, 강좌정보 l
where j.강좌이름  = l.강좌이름 and j.강좌이름 = '자료구조'

select j.학생번호, j.강좌이름 , l.강의실, j.성적 
from 성적정보 j, 강좌정보 l
where j.강좌이름  = l.강좌이름 and 학생번호 = '501'
-- 강좌이름과 다르게 학생번호는 j 테이블 하나에만 존재하는 데이터이므로 앞에 테이블명을 지칭 하지않아도 오류발생 X
-- 강좌이름은 j와 l 테이블 모두에 존재하므로 어떤 테이블을 지칭하는지 적어줘야 오류발생 X

-- -----------------------------
-- 3개 이상(여러 개)의 테이블 조인
select s.학생번호, j.강좌이름, j.성적, l.강의실 
from 학생 s 
inner join 성적정보 j on s.학생번호 = j.학생번호
inner join 강좌정보 l on j.강좌이름 = l.강좌이름

select *
from 학생 s
left join 성적정보 j on s.학생번호 = j.학생번호

select * from 성적정보

-- Subquery <==> inner join 과 결과는 동일
select * from 학생
where 학생번호 = (select 학생번호 from 성적정보 j where j.학생번호 = '502')
-- ( )안의 select문을 먼저 실행한 후, 결과값을 조건으로 학생 table에서 일치하는 데이터를 찾음
-- 데이터로 찾는 사람이 한명일 경우 where 조건 = 사용

-- 자료구조 들은 학생들의 이름과 학과를 프린트 in(sql 문)
-- 성적정보 + 학생
select * from 학생
where 학생번호 in (select 학생번호 from 성적정보 j where j.강좌이름 = '자료구조')
-- 데이터로 찾는 사람이 여려명일 경우 where 조건 in 사용

-- 강의실이 공학관110인 강좌이름을 이용하여 수업을 듣는 학생의 학생번호와 성적 프린트
-- 강좌정보 + 성적정보
select * from 성적정보
where 강좌이름 in (select 강좌이름 from 강좌정보 l where l.강의실  = '공학관110')