/*
row data
Dono tables ke saare students nikalo, duplicate students ko hata kar.
Dono tables ke saare records nikalo, duplicates ko bhi rakho.
Aise students nikalo jo 2025 aur 2026 dono mein hain.
Aise students nikalo jo 2025 mein hain lekin 2026 mein nahi hain.
Aise students nikalo jo 2026 mein hain lekin 2025 mein nahi hain
Dono tables ko mila kar unique students ki total count nikalo.
Dono tables ko mila kar names ki list nikalo aur naam ko alphabetically ascending order mein sort karo.
*/
use practice;
create table students_2025
(
id int,
name varchar(20)
);
insert into students_2025
values
(1,'aman'),
(2,'krish'),
(3,'kartik'),
(4,'kavya')

create table students_2026
(
id int,
name varchar(20)
);

insert into students_2026
values
(3,'kartik'),
(4,'kavya'),
(5,'gopal'),
(6,'mohan')

select
name as student_name,
id as student_id
from students_2025
union
select
name ,
id 
from students_2026

select
name as student_name,
id as student_id
from students_2025
union all
select
name,
id 
from students_2026

select
name as student_name,
id as student_id
from students_2025
intersect
select
name,
id 
from students_2026

select
name as student_name,
id as student_id
from students_2025
except
select
name,
id 
from students_2026

select
name as student_name,
id as student_id
from students_2026
except
select
name,
id 
from students_2025

select count(*) as total_student
from
(
select
name as student_name,
id as student_id
from students_2025
union
select
name ,
id 
from students_2026
) as all_student;

select
name as student_name,
id as student_id
from students_2025
union
select
name ,
id 
from students_2026
order by student_name asc

