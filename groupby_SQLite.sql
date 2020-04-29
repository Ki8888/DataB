-- SQLite
insert into SELECT_EX values(8,'Paul',24,'Houston',20000.00);
insert into SELECT_EX values(9,'James',44,'Norway',5000.00);
insert into SELECT_EX values(10,'James',45,'Texas',5000.00);

select NAME, sum(SALARY) as TOTAL
from SELECT_EX group by name;

select NAME, SUM(SALARY)
from SELECT_EX group by NAME
ORDER BY NAME;

--동일한 의미--
select COUNT(*), COUNT(AGE)
from SELECT_EX where AGE>40;
--

SELECT NAME, AGE, 'YES' as yesorno from SELECT_EX;

