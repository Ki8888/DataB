select *from COMPANY
group by NAME
having count(name)<2;

select *from COMPANY
group by ADDRESS having count(ADDRESS)>=2;

select SALARY from COMPANY;
select distinct SALARY from COMPANY;