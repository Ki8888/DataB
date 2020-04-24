-- SQLite
CREATE TABLE Organization
(
  ID   FLOAT NULL    ,
  NAME TEXT  NULL    ,
  AGE  INT   NULL    ,
  SEX  TEXT  NULL    ,
  ROLE TEXT  NULL    
);

CREATE TABLE review
(
  ID      FLOAT NULL    ,
  COMMENT TEXT  NULL    
);

insert into Organization (ID,NAME,AGE,SEX,ROLE) values (10,'고상훈',18,'남성','행동대원');
insert into Organization values (20,'아사코',15,'여성','행동대장');
insert into Organization values (30,'김열정',17,'남성','저격수');
insert into Organization values (110,'김영희',18,'여성','밀정');
insert into Organization values (150,'고상훈',14,'여성','정보원');

insert into review values (10,'불순분자');
insert into review values (20,'정상');
insert into review values (30,'자유민주주의');
insert into review values (110,'정상');
insert into review values (150,'정상');