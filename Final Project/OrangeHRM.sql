create database OrangeHRM;
use OrangeHRM;
drop database OrangeHRM;
CREATE TABLE Users (
    ID INT NOT NULL PRIMARY KEY,
    Username VARCHAR(25) NOT NULL,
	UserRole SET( 'Admin' , 'ESS') NOT NULL,
    Employee_Name Varchar(25) NOT NULL,
    Status SET( 'Enabled', 'Disabled') NOT NULL
);
desc Users;
insert into Users ( ID, Username, UserRole, Employee_Name, Status) values 
(1, 'Aaliyah.Haq', 'ESS', 'Aaliyah Haq', 'Enabled'),
(2, 'adash', 'ESS', 'Ananya Dash	', 'Enabled'),
(3, 'Admin', 'Admin', 'John Smith', 'Enabled'),
(4, 'Anthony.Nolan', 'ESS', 'Anthony Nolan', 'Enabled'),
(5, 'Aravind', 'ESS', 'Dominic Chase', 'Enabled'),
(6, 'Cassidy.Hope', 'ESS', 'Cassidy Hope', 'Enabled'),
(7, 'Cecil.Bonaparte', 'ESS', 'Cecil Bonaparte', 'Enabled'),
(8, 'Charlie.Carter', 'ESS', 'Charlie Carter', 'Enabled'),
(9, 'Chenzira.Chuki', 'ESS', 'Chenzira Chuki', 'Enabled'),
(10, 'dilshad', 'ESS', 'DilshadS S', 'Enabled'),
(11, 'Dominic.Chase', 'Admin', 'Dominic Chase', 'Enabled'),
(12, 'Ehioze Ebo', 'ESS', 'Ehioze Ebo', 'Enabled'),
(13, 'Fiona Grace','ESS', 'Fiona Grace', 'Enabled'),
(14, 'Garry White','ESS', 'Garry White', 'Enabled'),
(15, 'Goutam Ganesh','ESS', 'Goutam Ganesh', 'Enabled'), 
(16, 'HarryKane','ESS', 'Harry Kane', 'Enabled'),
(17, 'Jacqueline W','Admin', 'Jacqueline White', 'Disabled');

select * from Users;
select * from Users where Status ='Disabled';
select * from Users where Status ='Enabled';
select * from Users where UserRole = "ESS";
select * from Users where UserRole = "Admin";
select * from Users where ID != 5;
update Users set Username = 'John Smith' where Employee_Name = 'John Smith' ;
update Users set Employee_name = 'John Dilshad' where Username = 'dilshad';
select * from Users where Employee_Name <> 'John';


 CREATE TABLE Employee_List (
 Employee_Id INT NOT NULL,
 Employee_Name VARCHAR(50) NOT NULL,
 Employment_Status VARCHAR(50),
 Supervisor_ID INT NOT NULL , 
 Job_Title VARCHAR(50),
 Sub_Unit VARCHAR(50),
 PRIMARY KEY (Employee_Id),
    FOREIGN KEY (Supervisor_ID) REFERENCES Users (ID)
 );
 desc Employee_List;
 insert into Employee_list (Employee_Id, Employee_Name, Employment_Status, Supervisor_ID, Job_Title, Sub_Unit) values
(1, 'Linda Jane Anderson', 'Full-Time Permanent', 3 , 'VP - Sales & Marketing', 'Administration'),
(2, 'Odis Adalwin', 'Full-Time Permanent', 3 , 'Engineer', 'Administration'),
(3, 'Peter MacAnderson', 'Full-Time Permanent', 3 , 'Chief Financial Officer', 'Administration'),
(4, 'Lisa	Andrews', 'Full-Time Permanent', 13 , 'Software Engineer', 'Administration'),
(5, 'Sowmiya Babu', 'Full-Time Permanent', 3 , 'HR Manager', 'Human Resources'),
(6, 'Charlie Carter', 'Full-Time Probation', 1 , 'QA Engineer', 'Quality Assurance'),
(7, 'Dominic Chase', 'Full-Time Permanent', 3 , 'VP - Client Services', 'Administration'),
(8, 'Chenzira Chuki', 'Full-Time Permanent', 1 , 'QA Engineer', 'Quality Assurance'),
(9, 'Nathan Elliot', 'Full-Time Probation', 14 , 'Sales Representative', 'Sales'),
(10, 'Goutam Ganesh', 'Full-Time Permanent', 14 , 'Sales Representative', 'Sales'),
(11, 'Fiona	Grace', 'Full-Time Permanent', 13 , 'Software Architect', 'Development'),
(12, 'Russel Hamilton', 'Full-Time Permanent', 13 , 'Software Engineer', 'Development'),
(13, 'Aaliyah Haq', 'Full-Time Permanent', 1 , 'QA Lead', 'Quality Assurance'),
(14, 'Rebecca Harmony', 'Full-Time Contract', 1 , 'QA Engineer', 'Quality Assurance'),
(15, 'Cassidy Hope', 'Part-Time Contract', 11 , 'IT Manager', 'TechOpsn');

select * from Employee_list;
Select * from Employee_list where Supervisor_ID = 1;
select * from Employee_list where Employee_Name = 'Peter MacAnderson';
select * from Employee_list where Employment_Status = 'Part-Time Contract';
select * from employee_list where Employee_Name like 'A%';
select * from employee_list where Employee_Name like '%n%';
select * from employee_list where Employee_Name like '%s' and Supervisor_ID = (SELECT ID FROM users WHERE Employee_Name = 'Fiona Grace');
SELECT COUNT(*) FROM employee_list WHERE Supervisor_ID >= 2;
SELECT Employment_Status , Supervisor_Id FROM employee_list
WHERE Employee_Id >= 5 ORDER BY Supervisor_ID ASC;
SELECT Employee_name FROM employee_list GROUP BY Supervisor_ID;
alter table employee_list
add column Salary int;
desc employee_list;
update employee_list set Salary = 1300 where Sub_Unit = 'Sales';
update employee_list set Salary = 1400 where Sub_Unit = 'Quality Assurance';
update employee_list set Salary = 1600 where Job_Title = 'QA Lead';
update employee_list set Salary = 2400 where Job_Title = 'Software Engineer';
update employee_list set Salary = 2600 where Job_Title = 'Software Arhitect';
update employee_list set Salary = 1400 where Sub_Unit = 'Human Resources';
update employee_list set Salary = 2000 where Job_Title = 'IT Manager';
update employee_list set Salary = 2600 where Job_Title = 'Software Architect';
update employee_list set Salary = 2600 where Job_Title = 'Software Arhitect';
update employee_list set Salary = 1800 where Job_Title = 'VP - Sales & Marketing';
update employee_list set Salary = 2500 where Job_Title = 'Engineer';
update employee_list set Salary = 2840 where Job_Title = 'Chief Financial Officer';
update employee_list set Salary = 2000 where Job_Title = 'VP- Client Services';

select * from employee_list order by Salary;
SELECT AVG(Salary) FROM employee_list WHERE Sub_Unit = 'Administation';
SELECT COUNT(*) FROM employee_list WHERE Salary >= 1800;
select max(Salary) from employee_list;
select * from employee_list cross join users;
select * from employee_list inner join users on Employee_Id = users.ID;
select * from employee_list left join Users on Employee_list.Supervisor_ID = Users.ID ; 
select * from employee_list right join users on employee_list.Employee_Id = users.ID where users.Status = 'Enabled'; 




