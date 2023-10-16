-- shop, shop2, sys

-- db > table > 항목(field, item, property, attribute)

-- shop을 선택한 후, sql 버튼을 클릭하면 shop이 선택된 것

-- create table a ==> shop db에 만들어짐

-- 다른 db를 사용하고 싶으면

-- use shop2

-- shop2를 선택하였으므로, sql 버튼을 클릭하면 shop2가 선택됨

-- DCL : create(생성), alter(변경), drop(삭제)

create user 'summer3'@'localhost' identified by '1234'
-- 아이디
-- pw

grant all PRIVILEGES
on *.* 
to 'summer3'@'localhost'


use shop3

-- shop3.member3 definition

CREATE TABLE `member4` (
  `id` varchar(100) DEFAULT NULL,
  `pw` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT null,
  addr varchar(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

show tables
  
-- 가장 중요한 역활을 키 (중요키) ==> Primary key(PK)
-- PK는 해당 컬럼중에서 한가지를 선택
-- id가 PK가 되기위한 2가지 조건
-- 1) unique(중복 X)
-- 2) not null(비어있으면 X)