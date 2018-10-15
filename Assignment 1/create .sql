create table emp (
eid INT(10), 
name VARCHAR(20), 
age INT(10),
salary DOUBLE(10,2),
primary key(eid)
);


create table dept (
did INT(20),
name VARCHAR(20),
budget DOUBLE(20,2),
managerid INT(20),
PRIMARY KEY(did)
);


create table works (
eid INT(20),
did INT(20), 
pct_time INT(20)
);

