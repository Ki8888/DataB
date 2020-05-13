-- SQLite
create table emp(
id INT AUTO_INCREMENT PRIMARY KEY,
ename TEXT, parent_id INT DEFAULT 0 REFERENCES id);

insert into emp VALUES
(1,'name1',0),(2,'name2',1),(3,'name3',1),(4,'name4',3),(5,'name5',0),
(6,'name6',3),(7,'name7',4),(8,'name8',5),(9,'name9',8),(10,'name10',8);

--???
with RECURSIVE tmp1 as(
select id, ename, perent_id, ename AS path, 1 as deeps
from emp where parent_id=0
union ALL 
select e.id,e.name,e.parent_id,t_path||','||e.name,t.deeps+1
from tmp1 t join emp e on t.id=e.parent_id)
select id,ename,parent_id,path,deeps from tmp1 order by path;

