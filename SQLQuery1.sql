--CREATE DATABASE AcademyDB
--USE AcademyDB

--CREATE TABLE [Groups]
--(
--Id INT PRIMARY KEY IDENTITY,
--[No] NVARCHAR(10) NOT NULL
--)

--CREATE TABLE Students
--(
--Id INT PRIMARY KEY IDENTITY,
--Fullname NVARCHAR(30) NOT NULL,
--Point INT NOT NULL,
--GroupId INT FOREIGN KEY REFERENCES Groups(Id)
--)

--CREATE TABLE Exams 
--(
--Id INT PRIMARY KEY IDENTITY,
--SubjectName NVARCHAR(50) NOT NULL,
--StartDate DATETIME NOT NULL, 
--EndDate DATETIME NOT NULL, 
--)

--CREATE TABLE StudentExams
--(
--Id INT PRIMARY KEY IDENTITY,
--StudentId INT FOREIGN KEY REFERENCES Students(Id),
--ExamId INT FOREIGN KEY REFERENCES Exams(Id),
--ResultPoint INT NOT NULL
--)

--INSERT INTO Groups
--VALUES
--('P237'),('P236'),('D129'),('E452')

--INSERT INTO Exams
--VALUES
--('English','2024-05-25 11:50:00.600','2024-05-25 13:50:00.600'),
--('Frontend','2024-05-15 11:50:00.600','2024-05-15 13:50:00.600'),
--('Backend','2024-05-27 11:50:00.600','2024-05-27 13:50:00.600'),
--('Sculptring','2024-05-10 11:50:00.600','2024-05-10 13:50:00.600'),
--('Designing','2024-05-26 11:50:00.600','2024-05-26 13:50:00.600')

--INSERT INTO Students
--VALUES
--('Burhanaddin Mirsadizada',85,1),
--('Huseyn Ehedzade',90,2),
--('Revan Shixali',70,4),
--('Tamerlan Aliyev',80,1),
--('Nihat Tagizade',70,3)

--INSERT INTO StudentExams
--VALUES
--(1,2,95),
--(1,3,90),
--(2,2,100),
--(3,1,70),
--(4,2,90),
--(4,3,100),
--(5,5,70)

--SELECT S.Id,S.Fullname,S.Point,S.GroupId,G.No AS 'Group No' FROM Students AS S
--LEFT JOIN Groups AS G
--ON
--S.GroupId=G.Id

--SELECT S.Id,S.Fullname,S.Point,S.GroupId,COUNT(SE.StudentId) AS ExamCount FROM Students AS S
--LEFT JOIN StudentExams AS SE
--ON
--S.Id=SE.StudentId
--GROUP BY S.Id,S.Fullname,S.Point,S.GroupId

--SELECT E.SubjectName,COUNT(SE.StudentId) AS 'StudentCount' FROM Exams AS E
--LEFT JOIN StudentExams AS SE
--ON
--E.Id=SE.ExamId
--WHERE 
--DATEDIFF(DAY, E.EndDate, GETDATE()) = 1
--GROUP BY E.SubjectName

--SELECT SE.Id,SE.StudentId,SE.ExamId,SE.ResultPoint,S.Fullname,G.No FROM StudentExams AS SE
--LEFT JOIN Students AS S
--ON
--SE.StudentId=S.Id
--LEFT JOIN Groups AS G
--ON
--S.GroupId=G.Id

--SELECT S.Fullname,AVG(SE.ResultPoint) AS 'ExamAVG' FROM Students AS S
--LEFT JOIN StudentExams AS SE
--ON
--S.Id=SE.StudentId
--GROUP BY S.Fullname

