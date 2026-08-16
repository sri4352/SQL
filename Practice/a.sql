/*
Table Create
students naam ki table banao jisme:
id → INT
name → VARCHAR(50)
age → INT
city → VARCHAR(30)
marks → INT

students table mein 8 students ka data ek hi query mein insert karo.
Data mein:
Kuch students ki same city ho
Kuch ki same age ho
Marks different ho
At least 2 students ke marks same ho

students table mein email naam ka column add karo.

name column ki maximum length ko VARCHAR(100) karo.

city column ka naam location karo.

email column ko table se remove karo.
*/

create database practice;
use practice;

create table students
(
id int not null,
name varchar(50) not null,
age int,
city varchar(30),
marks int
)

insert into students
values(1,'sri kant',19,'vaishali',98)

insert into students
values
(2,'aman',21,'vaishali',65),
(3,'krish',19,'patna',98),
(4,'kartik',21,'siwan',89),
(5,'kavya',23,'gaya',76),
(6,'gopi',19,'chhapra',64),
(7,'gopal',28,'patna',67),
(8,'mohan',29,'vaishali',64)

alter table students
add constraint student_key primary key(id)

select*
from students

alter table students
add e_mail varchar(50)

alter table students
modify name varchar(100)

alter table students
rename column city to location

alter table students
drop column e_mail

/*
Students table ke saare records display karo.
Sirf name aur marks display karo.
Sirf name, city aur age display karo.
Students ke naam ko student_name naam se display karo.
*/
use practice;
select*
from students

select 
name,marks
from students

select
name,location,age
from students

select
name as studnet_name
from students

/*
Un students ko find karo jinke marks 60 se greater hain.
Un students ko find karo jinki age 20 hai.
Un students ko find karo jinke marks 60 se 80 ke beech hain.
Un students ko find karo jo Patna OR Siwan se hain.
Un students ko find karo jo Patna AND age > 20 hain.
Un students ko find karo jinke marks 70, 80 ya 90 hain.
Un students ko find karo jinka name 'A' se start hota hai.
Un students ko find karo jinka name 'n' par end hota hai.
Un students ko find karo jinke marks 70 se kam OR age 20 se kam hai.
*/
select 
name as studet_name
from students
where marks>60

select 
name as student_name
from students
where age = 20

select
name as student_name,
marks as student_marks,
'yes' as satisfied
from students
where marks between 60 and 80

select
name as student_name,
location as home,
'done' as mark_location
from students
where location in ('siwan','patna')

select
name as student_name,
'yes' as condition_matched
from students
where location ='patna' and age>20

select
name as student_name
from students
where marks in (80,90,70)

select
name as student_name
from students
where name like 'a%'

select
name as student_name
from students
where name like '%n'

select
name as student_name
from students
where marks<70 and age <20

/*
Students ko marks ke according ascending order mein display karo.
Students ko marks ke according descending order mein display karo.
Students ko age ASC aur marks DESC ke according sort karo.
Students ko city ASC aur marks DESC ke according sort karo.
*/

select*
from students
order by marks asc

select*
from students
order by marks desc

select*
from students
order by age asc, marks desc

select*
from students
order by location asc, marks desc

/*
Students ki unique cities find karo.
Students ki unique ages find karo.
Unique age + city combinations find karo.
*/

select distinct location
from students

select distinct age
from students

select distinct age,location
from students

/*
Table se top 3 students display karo.
Marks ke basis par top 3 students find karo.
Sabse kam marks wale 3 students find karo.
*/

select * 
from students
limit 3

select*
from students
order by marks desc
limit 3

select*
from students
order by marks asc
limit 3

/*
gopal ke marks ko 90 karo.
Patna ke sabhi students ke marks mein 5 marks add karo.
Jinki age 20 hai, unki age ko 21 karo.
Siwan ke students ki city ko Muzaffarpur mein update karo.
Aisa UPDATE likho jo sirf ek particular student ke marks change kare.
*/
SET SQL_SAFE_UPDATES = 0;
use practice;
update students
set marks =90
where name ='gopal';

update students
set marks =marks+5
where location ='patna'

update students
set age =21
where age =20

update students
set location ='Muzaffarpur'
where location ='siwan'

update students
set marks =90
where id =6;

/*
Har city ka:
total marks
average marks
student count nikalo.
Sirf un cities ko show karo jahan
student count > 1
AND
average marks > 70
Aur final result ko average marks descending mein sort karo.
*/

select
location as city,
avg(marks) as avg_marks,
sum(marks) as total_marks,
count(*) as total_student
from students
group by location
having count(*)>1 and avg(marks)>70
order by avg(marks) desc

/*
Har city ka student count nikalo aur sirf un cities ko show karo jahan at least 2 students hain.
Phir result ko student count ke descending order mein sort karo.
*/

select
count(*) as total_student,
location as city
from students
group by location
having count(*)>2
order by count(*) desc

/*
Un students ko find karo jinke:
marks > 70 AND age <= 21
aur result ko marks descending mein sort karo.
*/

select 
name as student_name,
marks,
age
from students
where marks>70 and age<=21
order by marks desc

