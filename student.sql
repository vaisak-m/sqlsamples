use jibydb;

create table student(
ID int unique auto_increment,
Reg_No int primary key unique,
DoB date not null,
Mark1 int check(Mark1<=100 && Mark1>=0), 
Mark2 int check(Mark2<=100 && Mark2>=0), 
Total int check(Total<=200 && Total>=0)
);