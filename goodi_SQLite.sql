-- SQLite
CREATE TABLE AREA
(
  AREA_ID TEXT NOT NULL,
  NAME    TEXT NULL    ,
  PRIMARY KEY (AREA_ID)
);

CREATE TABLE CLOSED_DAY
(
  CDAY_ID TEXT NOT NULL,
  DAY     TEXT NULL    ,
  PRIMARY KEY (CDAY_ID)
);
CREATE TABLE OPENTIME
(
  OPENTIME_ID TEXT NOT NULL,
  TIME        TEXT NULL    ,
  PRIMARY KEY (OPENTIME_ID)
);

CREATE TABLE R_SUPPORT
(
  R_SUPPORT_ID TEXT NOT NULL,
  COST         INT  NULL    ,
  PRIMARY KEY (R_SUPPORT_ID)
);

CREATE TABLE SECTOR
(
  SECTOR_ID TEXT NOT NULL,
  NAME      TEXT NULL    ,
  PRIMARY KEY (SECTOR_ID)
);

CREATE TABLE SUPPORT
(
  SUPPORT_ID TEXT NOT NULL,
  Y_N        TEXT NULL    ,
  PRIMARY KEY (SUPPORT_ID)
);

CREATE TABLE OBJ1_CARD
(
  OBJ1_ID  TEXT NOT NULL,
  CONTENTS TEXT NULL    ,
  PRIMARY KEY (OBJ1_ID)
);

CREATE TABLE OBJ2
(
  OBJ2_ID  TEXT NOT NULL,
  CONTENTS TEXT NULL    ,
  PRIMARY KEY (OBJ2_ID)
);


--main
CREATE TABLE GOOD_I
(
  GOOD_I_ID    INT  NOT NULL,
  AREA_ID      TEXT NOT NULL,
  SECTOR_ID    TEXT NOT NULL,
  OPENTIME     TEXT NULL,
  CDAY_ID      TEXT NOT NULL,
  NAME         TEXT NULL    ,
  PHONE        TEXT NULL    ,
  PLACE        TEXT NULL    ,
  MENU         TEXT NULL    ,
  SUPPORT_ID   TEXT NOT NULL,
  R_SUPPORT_ID TEXT NOT NULL,
  PRIMARY KEY (GOOD_I_ID),
CONSTRAINT FK_AREA_TO_GOOD_I
    FOREIGN KEY (AREA_ID)
    REFERENCES AREA (AREA_ID),
CONSTRAINT FK_SUPPORT_TO_GOOD_I
    FOREIGN KEY (SUPPORT_ID)
    REFERENCES SUPPORT (SUPPORT_ID),
CONSTRAINT FK_R_SUPPORT_TO_GOOD_I
    FOREIGN KEY (R_SUPPORT_ID)
    REFERENCES R_SUPPORT (R_SUPPORT_ID),
 CONSTRAINT FK_SECTOR_TO_GOOD_I
    FOREIGN KEY (SECTOR_ID)
    REFERENCES SECTOR (SECTOR_ID),
CONSTRAINT FK_CLOSED_DAY_TO_GOOD_I
    FOREIGN KEY (CDAY_ID)
    REFERENCES CLOSED_DAY (CDAY_ID)
);
--n:n

CREATE TABLE OBJ1_GOOD
(
  GOOD_I_ID INT  NOT NULL,
  OBJ1_ID   TEXT NOT NULL,
  CONSTRAINT FK_GOOD_I_TO_OBJ_GOOD1
    FOREIGN KEY (GOOD_I_ID)
    REFERENCES GOOD_I (GOOD_I_ID),
CONSTRAINT FK_OBJ1_CARD_TO_OBJ_GOOD1
    FOREIGN KEY (OBJ1_ID)
    REFERENCES OBJ1_CARD (OBJ1_ID)
);

CREATE TABLE OBJ2_GOOD
(
  OBJ2_ID   TEXT NOT NULL,
  GOOD_I_ID INT  NOT NULL,
  CONSTRAINT FK_OBJ2_TO_OBJ2_GOOD
    FOREIGN KEY (OBJ2_ID)
    REFERENCES OBJ2 (OBJ2_ID),
CONSTRAINT FK_GOOD_I_TO_OBJ2_GOOD
    FOREIGN KEY (GOOD_I_ID)
    REFERENCES GOOD_I (GOOD_I_ID)

);

--insert data
--support--
insert into SUPPORT (SUPPORT_ID, Y_N)
values ('S1','Y');
insert into SUPPORT (SUPPORT_ID, Y_N)
values ('S2','N');

--r_support--
insert into R_SUPPORT (R_SUPPORT_ID, COST)
values ('R1',NULL);
insert into R_SUPPORT (R_SUPPORT_ID, COST)
values ('R2',5000);
insert into R_SUPPORT (R_SUPPORT_ID, COST)
values ('R3',10000);

--area--
insert into AREA (AREA_ID, NAME)
values ('AR1', '강원');
insert into AREA (AREA_ID, NAME)
values ('AR2', '경기');
insert into AREA (AREA_ID, NAME)
values ('AR3', '경남');
insert into AREA (AREA_ID, NAME)
values ('AR4', '경북');
insert into AREA (AREA_ID, NAME)
values ('AR5','광주');
insert into AREA (AREA_ID, NAME)
values ('AR6','대구');
insert into AREA (AREA_ID, NAME)
values('AR7','대전');
insert into AREA (AREA_ID, NAME)
values ('AR8','부산');
insert into AREA (AREA_ID, NAME)
values('AR9','서울');
insert into AREA (AREA_ID, NAME)
values('AR10','세종');
insert into AREA (AREA_ID, NAME)
values('AR11','울산');
insert into AREA (AREA_ID, NAME)
values('AR12','인천');
insert into AREA (AREA_ID, NAME)
values('AR13','전남');
insert into AREA (AREA_ID, NAME)
values('AR14','전북');
insert into AREA (AREA_ID, NAME)
values('AR15','제주');
insert into AREA (AREA_ID, NAME)
values('AR16','창원');
insert into AREA (AREA_ID, NAME)
values('AR17','충남');
insert into AREA (AREA_ID, NAME)
values('AR18','충북');
--완료

--SECTOR--
insert into SECTOR(SECTOR_ID, NAME)
values ('SEC1','식당');
insert into SECTOR(SECTOR_ID, NAME)
values ('SEC2','간식');
insert into SECTOR(SECTOR_ID, NAME)
values ('SEC3','그외');

--CLOSED DAY--
insert into CLOSED_DAY(CDAY_ID, DAY)
values ('CD1','월');
insert into CLOSED_DAY(CDAY_ID, DAY)
values ('CD2','화');
insert into CLOSED_DAY(CDAY_ID, DAY)
values ('CD3','수');
insert into CLOSED_DAY(CDAY_ID, DAY)
values ('CD4','목');
insert into CLOSED_DAY(CDAY_ID, DAY)
values ('CD5','금');
insert into CLOSED_DAY(CDAY_ID, DAY)
values ('CD6','토');
insert into CLOSED_DAY(CDAY_ID, DAY)
values ('CD7','일');
insert into CLOSED_DAY(CDAY_ID, DAY)
values ('CD8','연중무휴(명절,공휴일제외)');

--GOOD I data--
insert into GOOD_I (GOOD_I_ID, AREA_ID, SECTOR_ID, OPENTIME, CDAY_ID, NAME, PHONE, MENU, SUPPORT_ID, R_SUPPORT_ID)
values ('G001','AR6','SEC1','AM11:00-PM22:30','CD8','서경주','57542827785','런치메뉴중 택1','S2','R1');
insert into GOOD_I (GOOD_I_ID, AREA_ID, SECTOR_ID, OPENTIME, CDAY_ID, NAME, PHONE, MENU, SUPPORT_ID, R_SUPPORT_ID)
values ('G002','AR9','SEC2','
