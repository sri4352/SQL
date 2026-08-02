--data defination and data manipulation
create database sriDB;
use sriDB;

create table person
(
id int not null,
person_name varchar (50) not null,
age float not null,
phone varchar(15),
birth_date date,
constraint pk_person primary key(id)
);

alter table person
add e_mail varchar(50) 

alter table person
drop column birth_date

use sriDB;
CREATE TABLE student (
    student_id INT NOT NULL,
    student_name VARCHAR(50) NOT NULL,
    age FLOAT,
    standard INT NOT NULL,
    e_mail VARCHAR(50) NOT NULL,
    phone VARCHAR(15),
    CONSTRAINT sk PRIMARY KEY(student_id)
);

alter table student
add person_id int

select *
from person;

select *
from student;

insert into person
values (1, 'Sri Kant Kumar', 19, '7667981385', '2007-08-27');

delete from person
where id =1;

insert into person
VALUES
(1, 'Sri Kant Kumar', 19, '7667981385', '2007-08-27', 'sri@gmail.com'),
(2, 'Rahul Kumar', 20, '9876543210', '2006-05-12', 'rahul@gmail.com'),
(3, 'Aman Singh', 21, '9123456789', '2005-11-20', 'aman@gmail.com'),
(4, 'Priya Sharma', 19, '9012345678', '2007-01-15', 'priya@gmail.com'),
(5, 'Neha Kumari', 22, '8899776655', '2004-09-08', 'neha@gmail.com'),
(6, 'Rohit Verma', 20, '9988776655', '2006-03-30', 'rohit@gmail.com'),
(7, 'Ankit Raj', 21, '7766554433', '2005-07-18', 'ankit@gmail.com'),
(8, 'Pooja Singh', 18, '6655443322', '2008-02-10', 'pooja@gmail.com'),
(9, 'Vikas Kumar', 23, '9543216780', '2003-12-25', 'vikas@gmail.com'),
(10, 'Sneha Gupta', 20, '9871234567', '2006-06-05', 'sneha@gmail.com');

select *
from person

update  person
set person_name ='vivek kumar',
age =27
where id =9;

update person
set e_mail ='vivek@gmail.com'
where id =9;

select *
from student

INSERT INTO student
(student_id, student_name, age, standard, e_mail, phone, person_id)
VALUES
(101, 'Sri Kant Kumar', 19, 12, 'sri@gmail.com', '7667981385', 1),
(102, 'Raghav Kumar', 20, 11, 'raghav@gmail.com', '9876543210', 2),
(103, 'Akash Singh', 21, 12, 'akash@gmail.com', '9123456789', 3),
(104, 'Priya Sharma', 19, 10, 'priya@gmail.com', '9012345678', 4),
(105, 'Neha Kumari', 22, 12, 'neha@gmail.com', '8899776655', 5),
(106, 'Rahul Verma', 20, 11, 'rahul@gmail.com', '9988776655', 6),
(107, 'Ankita priya', 21, 12, 'ankita@gmail.com', '7766554433', 7),
(108, 'Pooja Singh', 18, 10, 'pooja@gmail.com', '6655443322', 8),
(109, 'Vi Kumar', 23, 12, 'vikas@gmail.com', '9543216780', 9),
(110, 'Sneha Gupta', 20, 11, 'sneha@gmail.com', '9871234567', 10);

select *
from person

select *
from student

truncate table student;

select 
student_name,standard
from student
where standard =12;

select
standard,
sum(age) as total_age
from student
group by standard
order by total_age asc;

select
age as age,
count(age) as no_of_people
from student
group by age
order by age asc;

