use shop4

select *
from bbs b, member m
where b.writer = m.id

select *
from member m
left outer join bbs b 
on (b.writer = m.id)

select *
from member m
right outer join bbs b 
on (b.writer = m.id)

select *
from product p, company c 
where p.company = c.id 

select *
from product p
left outer join company c
on (p.company = c.id) 

select *
from product p
right outer join company c
on (p.company = c.id)

-- union(집합)

use company

select *
from emp
where deptno = 10
union
-- 두 select문을 합침
select *
from emp
where deptno = 20