mysql> insert into works values(12134,1002,60);
Query OK, 1 row affected (0.04 sec)

mysql> insert into works values(12134,1002,30);
Query OK, 1 row affected (0.08 sec)

mysql> insert into works values(12221,1001,70);
Query OK, 1 row affected (0.03 sec)

mysql> insert into works values(12221,1002,10);
Query OK, 1 row affected (0.03 sec)

mysql> insert into works values(12222,1001,80);
Query OK, 1 row affected (0.05 sec)

mysql> insert into works values(12222,1002,20);
Query OK, 1 row affected (0.04 sec)

mysql> insert into works values(12334,1002,100);
Query OK, 1 row affected (0.04 sec)

mysql> insert into works values(12345,1001,40);
Query OK, 1 row affected (0.05 sec)

mysql> insert into works values(12345,1002,70);
Query OK, 1 row affected (0.04 sec)


ALTER TABLE works
ADD FOREIGN KEY (eid) REFERENCES emp(eid);


ALTER TABLE works
ADD FOREIGN KEY (did) REFERENCES dept(did);

ALTER TABLE works 
DROP FOREIGN KEY eid;
