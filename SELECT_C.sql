-- SQLite
create table SELECT_EX(
ID TEXT NULL,
NAME TEXT NULL,
AGE INT NULL,
ADDRESS TEXT NULL,
SALARY INT NULL);

insert into SELECT_EX(ID, NAME, AGE, ADDRESS, SALARY)
values (1,'Paul',32,'California',20000.00);
insert into SELECT_EX(ID, NAME, AGE, ADDRESS, SALARY)
values (2,'Allen',25,'Texas',15000.00);
insert into SELECT_EX(ID, NAME, AGE, ADDRESS, SALARY)
values (3,'Teddy',23,'Norway',20000.00);
insert into SELECT_EX(ID, NAME, AGE, ADDRESS, SALARY)
values (4,'Mark',25,'Rich-Mond',65000.00);
insert into SELECT_EX(ID, NAME, AGE, ADDRESS, SALARY)
values (5,'David',27,'Texas',85000.00);
insert into SELECT_EX(ID, NAME, AGE, ADDRESS, SALARY)
values (6,'Kim',22,'South-Hall',45000.00);
insert into SELECT_EX values(6,'James',24,'Houston',10000.00);
insert into SELECT_EX values(7,'James',24,'Houston',10000.00);

--select--
select *from SELECT_EX;
select ID, NAME, SALARY from SELECT_EX;
select *from SELECT_EX where SALARY>65000;
select *from SELECT_EX where NAME LIKE 'Ki%';

select *from SELECT_EX where AGE>
(select AGE from SELECT_EX where SALARY>65000);

select *from SELECT_EX where AGE is not NULL;

