-- 1. db에 저장할 대상을 일컫는 말은?
-- >> entity(개체)

-- 2. 엔티티는 db에서 무엇을 만들어주는가?
-- >> table

-- 3. 테이블의 열을 부르는 말은?
-- >> item, field, attribute, property

-- 4. sql문을 역활에 따라 3가지로 분류, 해당되는 sql문을 2개 이상 작성하시오
-- >> data definition language(DDL) ==> create, alter, drop ==> schema design
-- >> data manipulation language(DML) ==> insert, select, update, delete ==> CRUD
-- >> data control language(DCL) ==> create user, drop user ==> 계정 생성, 백업/복구

-- 5. 스키마와 인스턴스를 비교 설명 
-- >> 스키마 - 데이터를 저장하기 위한 틀 + 제약조건
-- >> 인스턴스 - 실제로 테이블에 저장하는 데이터

-- 6. insert할때 행단위로 처리되는가? 열단위로 처리되는가?
-- >> 행단위

-- 7. 테이블에서 행을 부르는 말은?
-- >> row, record

-- 8. pk를 왜 설정하는가?
-- >> 개체 무결성 테스트를 하기 위해서

-- 9. fk를 왜 설정하는가?
-- >> 참조 무결성 테스트를 하기 위해서

-- 10. constraints는 무엇인가?
-- >> 제약조건 ==> unique, pk, fk

-- 11. sql에서 조건을 명시할때 사용하는 키워드는?
-- >> where