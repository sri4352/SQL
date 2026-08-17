/*
row data
Sabhi employees ke names ko uppercase mein display karo.
Sabhi cities ko lowercase mein display karo.
Har employee ka name aur name ki length nikalo.
Employee ka first name aur city ko combine karo.
Har employee ke name ke first 3 characters nikalo.
Har employee ke name ke first 4 characters nikalo.
Har employee ke name ke last 3 characters nikalo.
City Patna ko Delhi se replace karke display karo. Original table ko modify nahi karna hai.
Email se sirf username nikalo.
Har employee ka naam uppercase mein aur city lowercase mein ek saath display karo.
*/

create table employee
(
id int,
name varchar(20),
adress varchar(50),
e_mail varchar(50)
);

alter table employee
rename column adress to city
insert into employee
values
(1, 'Aman Kumar', 'Patna', 'aman@gmail.com'),
(2, 'KRISH SINGH', 'Vaishali', 'krish@gmail.com'),
(3, 'kartik', 'Siwan', 'kartik@gmail.com'),
(4, 'Kavya Sharma', 'Gaya', 'kavya@gmail.com'),
(5, 'Gopal Kumar', 'Patna', 'gopal@gmail.com');

select
upper(name) employee_name
from employee;

select
lower(city) location
from employee;

select
name as employee_name,
length(name) length_of_name
from employee;

select
concat(name,'-',city) name_city
from employee;

select
concat(name,' lives in ',city) sentence
from employee;

select
left(name,3) as 3_char
from employee;

select
substring(name,1,4) as 4_char
from employee

select
right(name,3) as last_3_char
from employee;

select
replace(city,'Patna','delhi') as new_city
from employee;

select
substring_index(e_mail,'@',1) as only_username
from employee;

select
upper(name) as upper_case,
lower(city) as lower_case
from employee;

/*
Output aisa chahiye:
AMAN KUMAR | PATNA | 10
KRISH SINGH | VAISHALI | 11
Yahan:
name → uppercase
city → uppercase
last value → name ki length
*/
select
upper(name) as employee_name,
upper(city) as location,
length(name) as length
from employee;

