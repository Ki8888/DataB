-- SQLite
select * from COMPANY where ID in (SELECT ID from COMPANY where SALARY>45000);

select AGE from COMPANY where exists (select AGE from COMPANY where SALARY>60000);

