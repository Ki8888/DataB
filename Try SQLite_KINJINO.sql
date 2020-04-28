-- SQLite
CREATE TABLE AUTHORITY2
(
  AUTHORITY_ID  NOT NULL,
  NAME          NULL    ,
  PRIMARY KEY (AUTHORITY_ID)
);

CREATE TABLE DEPARTMENT2
(
  DEPARTMENT_ID TEXT NOT NULL,
  NAME          TEXT NULL    ,
  PRIMARY KEY (DEPARTMENT_ID)
);

CREATE TABLE MEM_AUTH2
(
  AUTHORITY_ID      NOT NULL,
  MEMBER_ID    TEXT NOT NULL,
  CONSTRAINT FK_AUTHORITY2_TO_MEM_AUTH2
    FOREIGN KEY (AUTHORITY_ID)
    REFERENCES AUTHORITY2 (AUTHORITY_ID),
    CONSTRAINT FK_MEMBER2_TO_MEM_AUTH2
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER2 (MEMBER_ID)

);

CREATE TABLE MEMBER2
(
  NAME          TEXT NULL    ,
  ID            TEXT NULL    ,
  MEMBER_ID     TEXT NOT NULL,
  DEPARTMENT_ID TEXT NOT NULL,
  PRIMARY KEY (MEMBER_ID),
  CONSTRAINT FK_DEPARTMENT2_TO_MEMBER2
    FOREIGN KEY (DEPARTMENT_ID)
    REFERENCES DEPARTMENT2 (DEPARTMENT_ID)
);

--INSERT
insert into DEPARTMENT2 (DEPARTMENT_ID, NAME)
values ('A', 'IT Billing');
insert into DEPARTMENT2 values ('B','Engeineering');
insert into DEPARTMENT2 values ('C','Personnel');

insert into MEMBER2 (NAME, ID, MEMBER_ID, DEPARTMENT_ID)
values ('Paul','paul01@gmail.com', 'Paul01', 'A');
insert into MEMBER2 values ('Allen','texas@imfblog.org','Allen01','B');
insert into MEMBER2 values ('Teddy','norway@iotm.com','Teddy01','A');

insert into AUTHORITY2 (AUTHORITY_ID, NAME)
values ('A1','MANAGER');
insert into AUTHORITY2 values ('A2','ADMIN');
insert into AUTHORITY2 values ('A3','GUEST');

insert into MEM_AUTH2 (AUTHORITY_ID, MEMBER_ID)
values ('A1','Paul01');
insert into MEM_AUTH2 values ('A2', 'Paul01');
insert into MEM_AUTH2 values ('A3', 'Paul01');
insert into MEM_AUTH2 values ('A1', 'Allen01');
insert into MEM_AUTH2 values ('A2', 'Allen01');
insert into MEM_AUTH2 values ('A2', 'Teddy01');

select MEMBER2.ID, DEPARTMENT2.NAME from MEMBER2, DEPARTMENT2
where  MEMBER2.DEPARTMENT_ID= DEPARTMENT2.DEPARTMENT_ID;
