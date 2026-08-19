use practice;
create table employee_joining
(
id int,
name varchar(20),
joining_date date,
birth_date date,
login_time time
);
insert into employee_joining
values
(1, 'Aman', '2024-01-15', '2003-05-20', '09:30:00'),
(2, 'Krish', '2023-06-10', '2002-08-15', '10:45:00'),
(3, 'Kartik', '2024-03-25', '2004-01-10', '08:15:00'),
(4, 'Kavya', '2022-11-05', '2001-12-25', '11:20:00'),
(5, 'Gopal', '2023-09-18', '2003-07-30', '09:00:00');
select current_date() as today;
select current_time() as now;
select now() as present;

select
name as Employee_name,
year(joining_date) as joining_year,
month(joining_date) as joining_month,
day(joining_date) as joining_day
from employee_joining;

select
name as Employee_name,
date_format(joining_date,'%d-%b-%y') as joining_date
from employee_joining;

select
name as Employee_name,
date_format(joining_date,'%M-%d-%y') as joining_date
from employee_joining;

select
name as Employee_name,
datediff(current_date(),joining_date) as total_working_day
from employee_joining;

select
name as Employee_name,
round(datediff(current_date(),joining_date)/365,1) total_working_year
from employee_joining;

select
name as Employee_name,
timestampdiff(year,joining_date,current_date()) total_working_year
from employee_joining;

select
name as Employee_name,
date_format(joining_date,'%M-%d-%y') as joining_date,
date_format(date_add(joining_date, interval 1 year),'%M-%d-%y') as joining_date_after_1_year
from employee_joining;

select
name as Employee_name,
date_format(joining_date,'%M-%d-%y') as joining_date,
date_format(date_add(joining_date, interval 6 month),'%M-%d-%y') as joining_date_after_6_month
from employee_joining;

select
name as Employee_name,
date_format(joining_date,'%M-%d-%y') as joining_date,
date_format(date_add(joining_date, interval -30 day),'%M-%d-%y') as joining_date_after_1_year
from employee_joining;

select 
name as Employee_name,
monthname(joining_date) as joining_month
from employee_joining;

select 
name as Employee_name,
dayname(joining_date) as joining_day
from employee_joining;

select
name as Employee_name,
quarter(joining_date) as quarter_belong
from employee_joining;

select
name as Employee_name,
'yes' as condition_match,
date_format(joining_date,'%M-%d-%y') as joining_date
from employee_joining
where year(joining_date)=2024;

select
name as Employee_name,
'yes' as condition_match,
date_format(joining_date,'%M-%d-%y') as joining_date
from employee_joining
where monthname(joining_date)='january';

select
name as Employee_name,
'yes' as condition_match,
date_format(joining_date,'%M-%d-%y') as joining_date
from employee_joining
where joining_date>'2023-01-01';

select
name as Employee_name,
'yes' as condition_match,
date_format(joining_date,'%M-%d-%y') as joining_date
from employee_joining
where year(joining_date)=2023;

select
name as Employee_name,
'yes' as condition_match,
date_format(joining_date,'%M-%d-%y') as joining_date
from employee_joining
where joining_date between '2023-01-01' and '2023-12-31';

select
name as Employee_name,
'yes' as condition_match,
date_format(joining_date,'%M-%d-%y') as joining_date
from employee_joining
where joining_date between '2023-01-01' and '2024-12-31';

select
name as Employee_name,
'yes' as condition_match,
date_format(joining_date,'%M-%d-%y') as joining_date
from employee_joining
where joining_date >= date_sub(current_date(), interval 2 year);

select
name as Employee_name,
hour(login_time) as time
from employee_joining;

select
name as Employee_name,
minute(login_time) as time
from employee_joining;

select
name as Employee_name,
second(login_time) as time
from employee_joining;

select
name as Employee_name,
(login_time) as late_time
from employee_joining
where login_time >'10:00:00';

select
name as Employee_name,
(login_time) as late_time
from employee_joining
where login_time between '09:00:00' and '10:00:00';

select
concat(name,' joined ','on ',dayname(joining_date),',',' ',monthname(joining_date),' ',day(joining_date),', ',year(joining_date) )as employee_details
from employee_joining;

select
name as Employee_name,
datediff(current_date(),joining_date) as total_working_day,
date_format(joining_date,'%d-%b-%y') as joining_date
from employee_joining;

select
name as Employee_name,
date_format(joining_date,'%d-%b-%y') as joining_date,
date_format(date_add(joining_date,interval 1 year),'%d-%b-%y') as aniversary_date
from employee_joining;

select
concat
(
UPPER(j.name),
        ' - ',
        UPPER(e.city),
        ' - Joined: ',
        DATE_FORMAT(joining_date, '%d %M %Y')
    ) AS employee_details
from employee_joining as j
left join employee as e
on j.id =e.id;

select
name as Employee_name,
DATE_FORMAT(joining_date, '%d %M %Y') as joining_date,
login_time as arrival_time
from employee_joining
where year(joining_date)>2022 and login_time >'10:00:00';




