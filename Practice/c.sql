use practice;
create table student_data
(
id int,
name varchar(50),
city varchar(50)
);

create table student_marks
(
id int,
subject varchar(10),
marks int
);

insert into student_data
values
(1,'aman','patna'),
(2,'krish','vaishali'),
(3,'kartik','siwan'),
(4,'kavya','gaya'),
(5,'gopal','patna'),
(6,'mohan','chhapra');

insert into student_marks
values
(1,'sql',85),
(2,'sql',92),
(3,'sql',78),
(7,'sql',88),
(8,'sql',95);

/*
Students ka name aur unke marks nikalo.
Sirf un students ka naam aur city nikalo jinka marks table mein record available hai.
Saare students ka naam aur marks nikalo.(Jinke marks nahi hain, unke liye bhi student show hona chahiye.)
Saare students ka naam aur marks nikalo aur result ko marks ke descending order mein sort karo.
marks table ke saare records show karo aur jahan possible ho student ka naam bhi show karo.
*/

select
d.name,
m.marks
from student_data as d
inner join student_marks as m
on d.id =m.id;

select
d.name,
d.city
from student_data as d
inner join student_marks as m
on m.id =d.id ;

select
d.name,
m.marks
from student_data as d
left join student_marks as m
on d.id =m.id;

select
d.name,
m.marks
from student_data as d
left join student_marks as m
on d.id =m.id
order by m.marks desc

select
m.marks,
d.name
from student_marks as m
left join student_data as d
on m.id =d.id

/*
sirf un students ko nikalo jinka marks table mein match nahi hai.
*/
select
d.name,
m.marks
from student_data as d
left join student_marks as m
on d.id =m.id
where m.id is null

select
m.marks,
d.name
from student_marks as m
left join student_data as d
on m.id =d.id
where d.id is null

/*
Aisi query likho jisme:
saare students aayein
marks ho to marks aaye
marks na ho to NULL aaye
*/

select
d.name,
m.marks
from student_data as d
left join student_marks as m
on d.id =m.id

/*
Aise records nikalo:
Jo sirf students mein hain OR sirf marks mein hain, lekin dono mein common nahi hain.
*/

select 
d.name,
m.marks
from student_data as d
left join student_marks as m
on d.id =m.id

union

select 
d.name,
m.marks
from student_data as d
right join student_marks as m
on d.id =m.id

/*
Students ka naam aur marks nikalo jinke marks 80 se greater hain.
*/

select 
d.name,
m.marks
from student_data as d
inner join student_marks as m
on d.id =m.id
where m.marks>80

