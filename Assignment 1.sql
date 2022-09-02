Create database Assignment1


use Assignment1

Create table Clients
(
Client_id numeric(10) primary key,
Cname varchar(20) NOT NULL,
Addres varchar(30),

email varchar (30) unique,

Phone numeric(10),

Business varchar(20) NOT NULL
)
select * from Clients

Create table Departments
(
Deptno numeric(2) primary key,
  Dname varchar(15) NOT NULL,
 Loc varchar(20)
 )



 create table Projects
 (
 project_id numeric(3) primary key, 
 Descr varchar(30) NOT NULL,
Started_Date DATE,
Planned_End_Date DATE,
Actual_End_Date DATE,
Budget numeric(18) constraint positivebug check (Budget>0), 
Client_id numeric(10) references Clients(Client_id)
)

alter table Projects
add Constraint dateChk check(Actual_End_Date > Planned_End_Date)


Create table Employees
(
Empno numeric(4) primary key,
Ename varchar(20) NOT NULL,
Job varchar(15),
Salary numeric(7) constraint positive check(Salary>0),
Deptno numeric(2) references Departments(Deptno)
)



create table topProjectTasks
(
Project_id numeric(3) primary key foreign key references Projects(Project_id),
Expno numeric(4) foreign key references Employees(Empno),
Start_Date Date,
End_Date Date,
Task varchar(25) not null,

Status varchar(15) not null
)

create table EmpProjectTasks
(
Project_ID numeric(3) primary key foreign key references Projects(Project_ID),
Empno numeric(4) foreign key references Employees(Empno),
Start_Date Date,
End_Date Date,
Task varchar(25) not null,
Status Varchar(15) not null
)

insert into Clients values(1001,'ACME Utilities' ,'Noida', 'contact@aceutil.com',9657880032, 'Manufacturing')



Insert into Departments values (10, 'Design','Pune')

 insert into Employees values(7001, 'Sandeep', 'Analyst', 25000,10)

select * from Employees

 insert Into Projects values(481, 'Inventory', '2011-04-24',' 2011-10-01', '2011-10-11',150000,1001)

 insert into Clients values(1002 ,'Trackon Consultants', 'Mumbai',' consult@trackon.com', 8734210090 ,'Consultant'),
 (1003,'MoneySaverDistributo',' Kolkata',' save@moneysaver.com', 7799886655,' Reseller'),

(1004,' Lawful Corp',' Chennai',' justice@lawful.com', 9210342219,' Professional')



insert into Departments values(20,'Development','Pune')
insert into Departments values(30,'Testing','Mumbai')
insert into Departments values(40,'Document','Mumbai')

Select * from Departments


insert into Employees values(7002,'Rajesh','Designer',30000,10)
insert into Employees values(7003,'Madhav','Developer',40000,20)
insert into Employees values(7004,'Manoj','Developer',40000,20)
insert into Employees values(7005,'Abhay','Designer',35000,10)
insert into Employees values(7006,'Uma','Tester',30000,30)
insert into Employees values(7007,'Gita','Tech. Writer',30000,40)
insert into Employees values(7008,'Priya','Tester',35000,30)
insert into Employees values(7009,'Nutan','Developer',45000,20)
insert into Employees values(7010,'Smita','Analyst',20000,10)
insert into Employees values(7011,'Anand','Project Mgr',65000,10)

Select * from Employees

I
Insert into Projects values(402,'Accounting','01-Aug-11','01-Jan-12',NULL,500000,1002)
Insert into Projects values(403,'Payroll','01-Oct-11','31-Dec-11',NULL,750000,1003)
Insert into Projects values(404,'Contact Mgmt','01-Nov-11','31-Dec-11',null,50000,1004)
Select * from Projects

Select * from EmpProjectTasks
Insert into EmpProjectTasks VALUES(402,7001,'01-Apr-11','20-Apr-11','System Analysis','Completed')
