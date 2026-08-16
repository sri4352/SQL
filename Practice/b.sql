-- row data
use practice;
create table student_info
(
id int,
name varchar(50) not null,
city varchar(100) not null,
age int,
marks int,
constraint student_key primary key(id)
)

insert into student_info
values
(1,'rahul','patna',20,80),
(2,'amit','patna',20,70),
(3,'monu','siwan',20,90),
(4,'priya','patna',20,60),
(5,'rohit','siwan',21,80),
(6,'ankit','delhi',21,90)

/*
Har city mein kitne students hain?
Har city ke students ke total marks nikalo.
Har city ke students ke average marks nikalo.
Har age group mein kitne students hain?
Har city ka maximum marks find karo.
Har city ka minimum marks find karo.
*/

select
city as location,
count(id) as no_of_students
from student_info
group by city

select
city as location,
sum(marks) as no_of_students
from student_info
group by city

select
city as location,
avg(marks) as no_of_students
from student_info
group by city

select
age as student_age,
count(*) as no_of_students
from student_info
group by age

select
city as location,
max(marks) as max_marks
from student_info
group by city

select
city as location,
min(marks) as min_marks
from student_info
group by city

/*
Sirf un cities ko display karo jahan 2 se zyada students hain.
Sirf un cities ko display karo jinka total marks 150 se greater hai.
*/

select
city as location,
count(*) as total_student
from student_info
group by city
having count(*)>2

select
city as location,
'yes' as condition_match,
sum(marks)
from student_info
group by city
having sum(marks)>150

select
city as location,
'yes' as condition_match,
avg(marks)
from student_info
group by city
having avg(marks)>75


