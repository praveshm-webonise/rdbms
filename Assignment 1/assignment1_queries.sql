1)

select e.name,e.age from emp e,works w,dept d where e.eid=w.eid and w.did=d.did and d.name='hardware' union select e1.name,e1.age from emp e1,works w1,dept d1 where e1.eid=w1.eid and w1.did=d1.did and d1.name='software';

2)



4)

select e.name from emp e,works w,dept d where e.eid=w.eid and w.did=d.did and e.salary > all(select max(d2.budget) from dept d2 where d2.did=d.did);


5)

select distinct d.managerid from dept d where 100000 < all (select d2.budget from dept d2 where d2.managerid=d.managerid);

6)

select e.name from emp e,works w,dept d where e.eid=w.eid and w.did=d.did and budget=(select max(d2.budget) from dept d2);
