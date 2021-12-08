create database global;
show databases;
use global;
CREATE TABLE emp_details (empno int , Name VARCHAR(25), Age int,
sex CHAR(1), City varchar(15), salary float,dept varchar(20));
insert into emp_details
values(1,"saniya", 22, "F","hyderabad", 70000,"develepment"),
(2,"rizwana", 22, "F","mysore", 55000,"developement"),
(3,"aliya", 22, "F","banglore", 62000,"testing"),
(4,"nabiya", 22, "F","banglore", 57000,"technical"),
(5,"Sara", 22, "F","chennai", 72000,"safety"),
(6,"javeriya", 22, "F","mysore",60000,"service");



select * from emp_details;


# 1.query to fetch 50% records from the employee details:
select top 50 percent * from emp_details;



# 2. display the first and last record from emp_details:
(select * from emp_details order by empno asc limit 1)
union
(select * from emp_details order by empno desc limit 1);



 # 3. retrieve the last 3 records from the table:
 (select * from emp_details order by empno desc limit 3)
 order by empno asc;
 
 
 # 4.retreive the list of employee working in same department
 select * from emp_details where emp_details.dept=emp_details.dept;
 
 
 
 
 # 5.retreive duplicate records:
 select empno,count(empno) from emp_details group by empno having count(empno)>1;
  
 
 
 
 # 6. 3rd highest salary:
 select * from emp_details order by salary desc limit 3;
 
 
 
  #7. retreive the min and max salary:
 select max(salary),min(salary)from emp_details;




# 8.even and odd records:
 select * from emp_details where empno in
 (select empno from emp_details where empno%2=0);
 
  select * from emp_details where empno in
 (select empno from emp_details where empno%2<>0);
 
 




 
 

