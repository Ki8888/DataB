-- SQLite
select avg(sepal_length_cm) as avg_sp from iris_result;

select count(*) from iris_result group by target;
--count(*) 1:50, 2:50, 3:50

--MAX
select max(sepal_length_cm) from iris_result group by target;
--1:5.8, 2:7.0, 3:7.9
select max(sepal_width_cm) from iris_result group by target;
--1: 4.4 , 2: 3.4 , 3: 3.8
select max(petal_length_cm) from iris_result group by target;
--1:1.9 , 2:5.1 3:6.9
select max(petal_width_cm) from iris_result group by target;
--1: 0.6, 2:1.8, 3:2.5

create table iris_MAX (sl_cm float null,
sw_cm float null,
pl_cm float null,
pw_cm float null);

insert into iris_MAX (sl_cm,sw_cm,pl_cm,pw_cm) values (5.8, 4.4, 1.9, 0.6);
insert into iris_MAX values (7.0, 3.4, 5.1, 1.8);
insert into iris_MAX values (7.9, 3.8, 6.9, 2.5);
