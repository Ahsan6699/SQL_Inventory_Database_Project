--DDL Statement--
--Sql Project School Management System
Drop Database if exists SchoolManagementSysDB;
go
Create Database SchoolManagementSysDB
ON  PRIMARY 
( NAME = 'SchoolManagementSysDB', FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SchoolManagementSysDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = 'SchoolManagementSysDB_log', FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SchoolManagementSysDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
Go


create login Ahsan with password ='Ahsan@123', DEFAULT_DATABASE = SchoolManagementSysDB;

go
alter server role serveradmin
add member Ahsan
go
use SchoolManagementSysDB
go
create role UserRole
go
alter role db_owner
add member UserRole
go
create schema UserSchema
go
grant select,insert, update, delete, execute
on schemas::UserSchema
to UserRole
go
create user Ahsanul for login ProjectUser
with default_schema=UserSchema
go
alter role UserRole
add member Ahsanul

Use SchoolManagementSysDB
go

-- Create Students table
CREATE TABLE Students 
(
    StudentID INT PRIMARY KEY not null,
    StudentFName VARCHAR(50) not null,
	StudentLName VARCHAR(50) null,
    DateOfBirth DATE not null,
    Gender VARCHAR(10) not null,
    [Address] VARCHAR(50) not null,
    ClassID INT not null,
);
go


--create Teachers Table
CREATE TABLE Teachers 
(
    TeacherID INT PRIMARY KEY not null,
    TeacherFName VARCHAR(50) not null,
    TeacherLName VARCHAR(50) null,
    DateOfBirth DATE not null,
    Gender VARCHAR(10) not null,
    [Address] VARCHAR(50) not null,
    SubjectTaught VARCHAR(50) not null
);
go


-- Create Classes table
CREATE TABLE Classes 
(
    ClassID INT PRIMARY KEY not null,
    ClassName VARCHAR(20) not null,
    Section VARCHAR(5) not null,
    ClassTeacherID INT not null
);
go


-- Create Subjects table
CREATE TABLE Subjects 
(
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50),
    ClassID INT foreign key references Classes(ClassID) not null
);
go

-- Create Attendance table
CREATE TABLE Attendance 
(
    AttendanceID INT PRIMARY KEY not null,
    StudentID INT foreign key references Students(StudentID) not null,
    [Date] DATE,
    [Status] VARCHAR(10)
);
go

-- Create Results table
CREATE TABLE Results 
(
    ResultID INT PRIMARY KEY not null,
    StudentID INT foreign key references Students(StudentID) not null,
    SubjectID INT foreign key references Subjects(SubjectID) not null,
    ExamType VARCHAR(10) not null,
    Marks FLOAT not null
);
go

--Some Query Example from Blood bank Management system:

	Select StudentID, StudentFName+StudentLName as [Name], Gender
	From Students
	Where Gender ='Female'
	order by [Name] 
	go

    Select TeacherID, TeacherFName+TeacherLName as [Name], Gender, [Address]
	from Teachers
	where [Address] = 'Chittagong, Bangladesh'
	go

	Select TeacherID, TeacherFName+TeacherLName as [Name], DateOfBirth, Gender
	From Teachers
	Order by DateOfBirth desc;
	go

	Select * 
	From Students
	where StudentID between 5 and 10
	go

	Select S.StudentID, S.StudentFName+S.StudentLName as [Name], c.ClassID, c.ClassName
	from Students as S
	Join Classes as C
	on  S.ClassID=C.ClassID;
	go

	Select *
	From Attendance
	where [Status] like 'Present'
	go

	Select Count(Distinct StudentID) as NumberOfStudents,
	count(SubjectID) as TotalSubjects
	From Results;
	go

	Select TeacherID, DateOfBirth, count (*) as Qty
	From Teachers
	where Gender like 'Female'
	Group By Rollup (TeacherID, DateOfBirth)
	Order By DateOfBirth desc
	go


	Select StudentID, DateOfBirth, count (*) as Qty
	From Students
	where Gender like 'Male'
	Group By Cube (StudentID, DateOfBirth)
	Order By DateOfBirth desc
	go
--CTE
With MyCte
	as
	(Select *
	From Studens
	where Gender like 'Female'
	)
	Select *
	From MyCte
--Store Procedure--
CREATE PROCEDURE InsertSrudent
	@StudentId int,
    @Name VARCHAR(50),
    @Gender VARCHAR(10),
    @Address VARCHAR(5),
    @DateOfBirth VARCHAR(20),
    @Address VARCHAR(255)
	





