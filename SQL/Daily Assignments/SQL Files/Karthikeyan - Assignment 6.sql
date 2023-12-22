create  database stuDB;
use stuDB;

create table studata(stuc_id int,stu_name varchar(20),stu_mark int);

insert into studata values(1,'Ram',67),(2,'Sri',58),(3,'Anita',79),(4,'Ram',73),(5,'Sanjay',83),(6,'Anita',45);
insert into studata(stu_name) values('Mano'),('karthik');

select * from studata;

/* Finding duplicate values */
select  stu_name, count(stu_name) as stu_count from studata group by stu_name having(count(stu_name)>1);

select stu_name, ROW_NUMBER() over(partition by stu_name order by stu_name) as rn from studata;

/* Deleting duplicate values */
WITH CTE AS (
    SELECT
        stuc_id,
        stu_name,
        stu_mark,
        ROW_NUMBER() OVER (PARTITION BY stu_name ORDER BY stu_name DESC) AS row_num
    FROM
        studata
)
DELETE FROM CTE WHERE row_num > 1;

/* Finding null values */
select * from studata where stuc_id is null;

/* Deleting null values */
delete from studata where stuc_id is null;

/* Updating null values */
update studata set stuc_id='1' where stu_name='Karthik' and stuc_id is null;

/* Average of the Students */
SELECT stu_name,
       stuc_id,
       stu_mark,
       AVG(stu_mark) OVER (PARTITION BY stu_mark) AS average_mark
FROM   studata;