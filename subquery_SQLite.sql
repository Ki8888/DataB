-- SQLite
--subquery insert
select * from COMPANY where ID in (SELECT ID from COMPANY where SALARY>45000);

select AGE from COMPANY where exists (select AGE from COMPANY where SALARY>60000);

select AGE from COMPANY WHERE EXISTS (SELECT AGE FROM COMPANY AS SUB_COMPANY
where COMPANY.ID=SUB_COMPANY.ID and SALARY>65000);

--BKP 생성, 데이터 복사
create table COMPANY_BKP(
ID TEXT NULL, NAME TEXT NULL, AGE INT NULL, ADDRESS TEXT NULL, SALARY INT NULL);

-----
insert into COMPANY_BKP(ID, NAME, AGE, ADDRESS, SALARY)
SELECT ID, NAME, AGE, ADDRESS, SALARY
from COMPANY;
--
INSERT INTO COMPANY_BKP
SELECT * FROM COMPANY
WHERE ID IN (SELECT ID FROM COMPANY);

select ID from COMPANY;

UPDATE COMPANY
SET SALARY = SALARY * 0.50
WHERE AGE IN (SELECT AGE FROM COMPANY_BKP WHERE AGE >= 27 );
--PC시간으로 나옴
SELECT date('now')
--날짜, 시간 (그리니치표준으로 출력되니 데이터대상지역 시간과 시차 조정필요)
select datetime(139318134,'unixepoch');
select strftime('%s','now');
select datetime('now','+2 hours');
select datetime('now');
select time('12:00','utc');
select time('00:00','localtime','+9 hours');


