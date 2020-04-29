-- SQLite
select  AGE from boston_table where AGE >=68.5;

select *from boston_table where AGE between 10 and 30;

select *from boston_table
where TAX > (select AGE from boston_table where AGE between 10 and 20);

