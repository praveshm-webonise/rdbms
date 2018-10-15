insert into dept values(1001,'Hardware',100000,20121);


insert into dept values(1002,'Software',150000,20122);

insert into dept values(1003,'Electronic',200000,20123);


insert into dept values(1004,'Testing',120000,20124);

insert into dept values(1005,'HR',50000,20125);





ALTER TABLE dept
ADD FOREIGN KEY (managerid) REFERENCES emp(eid);
