-- database 선택
use univ

-- table 만들기
create table depart2 (
	id 	varchar(100) primary key,
	name varchar(100),
	instructor varchar(100)
)

create table student2 (
	id 	varchar(100) primary key,
	name varchar(100),
	tel varchar(100),
	depart_id varchar(100)
)

select * from depart2

desc depart2
-- 스키마를 보고 싶으면 desc를 사용
-- desc = describe(설명하다)

ALTER TABLE univ.student2 ADD CONSTRAINT student2_FK FOREIGN KEY (depart_id) REFERENCES univ.depart2(id);
ALTER TABLE univ.student2 DROP FOREIGN KEY student2_FK;

drop table depart2

show table