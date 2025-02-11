--DML Statement--
-- Insert sample data into Students table
INSERT INTO Students 
(StudentId, StudentFName, StudentLName, DateOfBirth, Gender, [Address], ClassID)
VALUES
    (1, 'John', 'Doe', '2005-03-15', 'Male', 'Dhaka, Bangladesh', 1),
    (2, 'Jane', 'Smith', '2006-07-20', 'Female', 'Chittagong, Bangladesh', 2),
    (3, 'Mohammed', 'Rahman', '2004-01-10', 'Male', 'Sylhet, Bangladesh', 3),
    (4, 'Ayesha', 'Khan', '2005-09-05', 'Female', 'Khulna, Bangladesh', 1),
    (5, 'Ahmed', 'Ali', '2006-04-25', 'Male', 'Rajshahi, Bangladesh', 2),
    (6, 'Fatima', 'Begum', '2004-11-30', 'Female', 'Barisal, Bangladesh', 3),
    (7, 'Kamal', 'Hossain', '2005-06-12', 'Male', 'Dinajpur, Bangladesh', 1),
    (8, 'Laila', 'Akter', '2006-02-18', 'Female', 'Rangpur, Bangladesh', 2),
    (9, 'Abdul', 'Aziz', '2004-08-22', 'Male', 'Comilla, Bangladesh', 3),
    (10, 'Nadia', 'Islam', '2005-12-07', 'Female', 'Jessore, Bangladesh', 1),
    (11, 'Abul', 'Basar', '2004-04-22', 'Male', 'Dhaka, Bangladesh', 2),
    (12, 'Kamrul', 'Hasan', '2003-02-21', 'Male', 'Chittagong, Bangladesh', 3),
    (13, 'Fatema', 'Akter', '2006-03-28', 'Female', 'Sylhet, Bangladesh', 1),
    (14, 'Jaheda', 'Akter', '2004-01-11', 'Female', 'Khulna, Bangladesh', 2),
    (15, 'Abdur', 'Rahim', '2005-07-22', 'Male', 'Rajshahi, Bangladesh', 3),
    (16, 'Foysal', 'Khan', '2005-09-13', 'Male', 'Noakhali, Bangladesh', 1),
    (17, 'Abul', 'Hasan', '2006-08-22', 'Male', 'ChandPur, Bangladesh', 1),
    (18, 'Riya', 'Akter', '2003-11-22', 'Female', 'Jessore, Bangladesh', 3),
    (19, 'Raju', 'Khan', '2004-05-22', 'Male', 'Gazipur, Bangladesh', 2),
    (20, 'Emon', 'Hasan', '2005-11-12', 'Male', 'Laksmipur, Bangladesh', 1);
    --Select *
	--From Students
go
-- Insert sample data into Teachers table
INSERT INTO Teachers 
(TeacherID, TeacherFName, TeacherLName, DateOfBirth, Gender, [Address], SubjectTaught)
VALUES
    (1, 'Mustafizur', 'Rahman', '1980-05-20', 'Male', 'Dhaka, Bangladesh', 'Mathematics'),
    (2, 'Nasrin', 'Khan', '1982-09-10', 'Female', 'Chittagong, Bangladesh', 'English'),
    (3, 'Hasan', 'Ali', '1975-02-15', 'Male', 'Sylhet, Bangladesh', 'Science'),
    (4, 'Hacina', 'Begum', '1978-11-30', 'Female', 'Khulna, Bangladesh', 'Social Studies'),
    (5, 'Hossain', 'Arshad', '1983-07-05', 'Male', 'Rajshahi, Bangladesh', 'Bangla'),
    (6, 'Ayesha', 'Begum', '1988-11-11', 'Female', 'Gazipur, Bangladesh', 'Computer'),
    (7, 'Homayon', 'Kabir', '1980-12-16', 'Male', 'Barisal, Bangladesh', 'Biology');
  --Select *
  --From Teachers
go
-- Insert sample data into Classes table
INSERT INTO Classes 
(ClassID, ClassName, Section, ClassTeacherID)
VALUES
    (1, 'Class 6', 'A', 1),
    (2, 'Class 7', 'B', 2),
    (3, 'Class 8', 'C', 3),
    (4, 'Class 9', 'A', 4),
    (5, 'Class 10', 'B', 5);
  --Select *
  --From Classes
go
-- Insert sample data into Subjects table
INSERT INTO Subjects 
(SubjectID, SubjectName, ClassID)
VALUES
    (1001, 'Mathematics', 1),
    (1002, 'English', 2),
    (1003, 'Science', 3),
    (1004, 'History', 4),
    (1005, 'Biology', 5)
  --Select *
  --From Subjects
go
-- Insert sample data into Attendance table
INSERT INTO Attendance 
(AttendanceID, StudentID, [Date], [Status])
VALUES
    (101, 1, '2024-05-01', 'Present'),
    (102, 2, '2024-05-01', 'Present'),
    (103, 3, '2024-05-01', 'Absent'),
    (104, 4, '2024-05-01', 'Present'),
    (105, 5, '2024-05-01', 'Absent'),
    (106, 6, '2024-05-01', 'Present'),
    (107, 7, '2024-05-01', 'Present'),
    (108, 8, '2024-05-01', 'Absent'),
    (109, 9, '2024-05-01', 'Present'),
    (110, 10, '2024-05-01', 'Present'),
    (111, 11, '2024-05-01', 'Present'),
    (112, 12, '2024-05-01', 'Present'),
    (113, 13, '2024-05-01', 'Absent'),
    (114, 14, '2024-05-01', 'Present'),
    (115, 15, '2024-05-01', 'Absent'),
    (116, 16, '2024-05-01', 'Present'),
    (117, 17, '2024-05-01', 'Present'),
    (118, 18, '2024-05-01', 'Absent'),
    (119, 19, '2024-05-01', 'Present'),
    (120, 20, '2024-05-01', 'Present');
  --Select *
  --Attendence
go
-- Insert sample data into Results table
INSERT INTO Results 
(ResultID, StudentID, SubjectID, ExamType, Marks)
VALUES
    (10010, 1, 1005, 'Midterm', 85),
    (10011, 3, 1004, 'Final', 90),
    (10012, 2, 1003, 'Midterm', 78),
    (10013, 14, 1002, 'Final', 82),
    (10014, 20, 1001, 'Midterm', 92),
    (10015, 4, 1005, 'Final', 88),
    (10016, 10, 1003, 'Midterm', 80),
    (10017, 15, 1002, 'Final', 85),
    (10018, 16, 1001, 'Midterm', 75),
    (10019, 17, 1003, 'Final', 79),
    (10020, 18, 1005, 'Midterm', 85),
    (10021, 19, 1002, 'Final', 90),
    (10022, 5, 1005, 'Midterm', 89),
    (10023, 6, 1004, 'Final', 83),
    (10024, 7, 1003, 'Midterm', 91),
    (10025, 8, 1002, 'Final', 89),
    (10026, 9, 1001, 'Midterm', 81),
    (10027, 13, 1005, 'Final', 87),
    (10028, 12, 1004, 'Midterm', 74),
    (10029, 11, 1003, 'Final', 77);
  --Select *
  --From Results
go
--View--
Create view vwOfAttendance
with encryption
As
    Select * from Attendance
go

Create view dbo.vwOfResults
with schemabinding
As 
Select S.StudentID, S.StudentFName+S.StudentLName as [Name], c.ClassID, c.ClassName
	from dbo.Students as S
	Join dbo.Classes as C
	on  S.ClassID=C.ClassID;
go
--Index--

Create index ixSubjectsbyID
    on Subjects(SubjectID);
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