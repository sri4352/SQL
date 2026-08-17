/*
row data
Dono tables ke saare students nikalo, duplicate students ko hata kar.
Dono tables ke saare records nikalo, duplicates ko bhi rakho.
Aise students nikalo jo 2025 aur 2026 dono mein hain.
Aise students nikalo jo 2025 mein hain lekin 2026 mein nahi hain.
Aise students nikalo jo 2026 mein hain lekin 2025 mein nahi hain.
Dono tables ko mila kar unique students ki total count nikalo.
Dono tables ko mila kar names ki list nikalo aur naam ko alphabetically ascending order mein sort karo.

*/

use practice;
create table employee_salary
(
id int,
name varchar(20),
salary float
);

alter table employee_salary
modify salary decimal(10,2);

insert into employee_salary
values
(1, 'Aman', 45678.45),
(2, 'Krish', 52345.67),
(3, 'Kartik', 38999.25),
(4, 'Kavya', 61789.89),
(5, 'Gopal', 43210.55);

select
name as employee_name,
round(salary,0) as round_salary
from employee_salary;

select
name as employee_name,
round(salary,2) as round_salary
from employee_salary;

select
name as employee_name,
ceil(salary) as max_salary
from employee_salary;

select
name as employee_name,
floor(salary) as max_salary
from employee_salary;

use practice;
select
salary as employee_salary,
round(salary,-3) as nearest_salary
from employee_salary;

select 
name as employee_name,
salary as employee_salary,
round(salary*0.1,2) as bonus,
round(salary +salary*0.1 ,2) as total_salary
from employee_salary;

select
name as employee_name,
salary-5000 as temp_salary
from employee_salary;

select 
upper(name) Employee_Name,
round(salary,0)  Employee_Salary
from employee_salary;

select 
name as Employee_name,
'yes' as condition_match
from employee_salary
where length(name)>5;

select
name as Employee_name,
upper(name) as Name_in_Cap,
length(name) as name_length,
salary as Employee_Salary,
round(salary,0) as Rounded_salary
from employee_salary;

/*
Jin employees ki salary 50000 se greater hai, unka:
*/
select
name as Employee_name,
upper(name) as Name_in_Cap,
length(name) as name_length,
salary as Employee_Salary,
round(salary,0) as Rounded_salary
from employee_salary
where salary>50000;

select
upper(s.name) as Employee_name,
upper(e.city),
length(s.name) as Name_length,
salary as Employee_salary,
round(salary*0.1,2) as bonus,
round(salary +salary*0.1 ,2) as total_salary
from employee_salary as s
left join employee as e
on s.id =e.id;

/*
Output:
AMAN KUMAR - PATNA - ₹50346
*/
select
concat
(
upper(s.name),'  -  ',upper(e.city),'  -  ₹',round(s.salary*1.10)
) as Employee_Details
from employee_salary as s
left join employee as e
on s.id =e.id;


 
