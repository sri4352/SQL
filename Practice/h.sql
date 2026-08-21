
use practice;
create table employee_data
(
id int,
name varchar(30),
salary int,
bonus int,
manager varchar(20),
phone varchar(15)
);

insert into employee_data
value
(1, 'Aman', 45000, 5000, 'Raj', 9876543210),
(2, 'Krish', 52000, NULL, 'Raj', NULL),
(3, 'Kartik', 40000, 3000, NULL, 9123456780),
(4, 'Kavya', 60000, NULL, 'Neha', NULL),
(5, 'Gopal', 38000, 2000, NULL, 9988776655);

select
name as Employee_name,
bonus as Emplyee_bonus
from employee_data
where bonus is null;

select
name as Employee_name,
manager as Emplyee_Manager
from employee_data
where manager is null;

select
name as Employee_name,
phone as Emplyee_Contact
from employee_data
where phone is null;

select
name as Employee_name,
ifnull(bonus,0) as Employee_bonus
from employee_data;

select
name as Employee_name,
ifnull(phone,'not available') as Employee_contact
from employee_data;

select
name as Employee_name,
ifnull(bonus,0)+salary as total_salary
from employee_data;

select
name as Employee_name,
coalesce(manager,'no manager') as Employee_manager
from employee_data;

use practice;
create table employee_contact
(
id int,
name varchar(30),
phone varchar(20),
alternate_phone varchar(20),
e_mail varchar(50)
);

insert into employee_contact
values
(1, 'Aman', NULL, '9876543210', 'aman@gmail.com'),
(2, 'Krish', NULL, NULL, 'krish@gmail.com'),
(3, 'Kartik', '9123456780', NULL, NULL),
(4, 'Kavya', NULL, '9988776655', 'kavya@gmail.com');

select
name as Employee_name,
coalesce(phone,alternate_phone,e_mail,'no contact') as Employee_contact
from employee_contact;

select
id as Employee_id,
concat(
'Employee: ', UPPER(name),
        '  Salary: ',  salary,
        '  Bonus: ', ifnull(bonus,0) ,
        '  Total: ', salary + ifnull(bonus,0), 
        '  Manager: ', ifnull(manager,'no manager'), 
        '  Phone: ',ifnull(phone,'no_contact')
) as Employee_Details
from employee_data;


