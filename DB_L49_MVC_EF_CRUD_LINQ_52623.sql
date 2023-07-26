create database DB_L49_MVC_EF_CRUD_LINQ_52323
use DB_L49_MVC_EF_CRUD_LINQ_52323

create table tblEmployee
(
empid int primary key identity,
name varchar(100),
address varchar(100),
age int
)

create proc sp_tblEmployee_insert
@name varchar(100),
@address varchar(100),
@age int
as
begin
insert into tblEmployee(name,address,age)values(@name,@address,@age)
end

create proc sp_tblEmployee_get
as
begin
select * from tblEmployee
end

create proc sp_tblEmployee_delete
@empid int 
as
begin
delete from tblEmployee where empid=@empid
end

create proc sp_tblEmployee_edit
@empid int 
as
begin
select * from tblEmployee where empid=@empid
end

create proc sp_tblEmployee_update
@empid int,
@name varchar(100),
@address varchar(100),
@age int
as
begin
update tblEmployee set name=@name,address=@address,age=@age where empid =@empid
end
-------------------------------------------------------------------------------------

create table tblCountry
(
cid int primary key identity,
cname varchar(50)
)

insert into tblCountry(cname)values('India')
insert into tblCountry(cname)values('Pakistan')
insert into tblCountry(cname)values('USA')

alter table tblEmployee add country int

create proc usp_tblCountry_get
as
begin
select * from tblCountry
end

