--day 1
create database demo;
create table student_table;
select * from student_table;
insert into student_table values (1, 'kaviya', 600), (2, 'priya', 700), (3, 'diviya', 900), (4, 'Gobika', 1000), (5, 'kaviya',1100), (6, 'vini', 1200)
select student_name as name from student_table;

select * from student_table order by id desc;

select count(*) from student_table where id>1 order by id desc;

select * from student_table group by dept_id having dept_id>2;

select id from student_table where dept_id=3;
select * from dept;
select d.*, s.* from dept d, student_table s where s.marks>700 and dept_name='bio' and s.dept_id=d.dept_id

select id from student_table where marks=700;

--day 2
select * from student_table where dept_id in (select dept_id from dept where dept_name='tam' || dept_name='chem' || dept_name='eng');
select * from student_table s, dept d where s.marks>1000 and d.dept_name='bio';
select * from student_table s,(select * from dept where dept_id>1)d where s.marks>1000 and d.dept_id>6;
alter table student_table add result varchar(10);

alter table student_table modify result int;

alter table student_table drop result;

update student_table set marks=1000 where id=3;
create database demo1;

create table sales ( 
salesId int not null primary key,
sales_name varchar(20),
address varchar(20)
);
create table order_sales (
id int primary key,
product_name varchar(20),
address varchar(20),
salesId int,
constraint FK_order FOREIGN KEY(salesId) REFERENCES sales(salesId));
select * from sales;

--day 3 till 10am
select * from order_sales
select s.sales_name, p.salesId, s.salesId from sales s right join 
order_sales p on s.salesId=p.salesId;
select * from order_sales
select s.sales_name, p.salesId, s.salesId from sales s left join 
order_sales p on s.salesId=p.salesId;
select * from order_sales
select s.sales_name, p.salesId, s.salesId from sales s inner join 
order_sales p on s.salesId=p.salesId;