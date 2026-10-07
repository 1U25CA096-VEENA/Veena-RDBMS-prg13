USE collegeDB;

CREATE TABLE Course ( CourseID INT PRIMARY KEY, CourseName VARCHAR(50) NOT NULL, FacultyName
VARCHAR(50), DepartmentName VARCHAR(100) );

INSERT INTO Course VALUES (1, 'BCA', 'Dr. Kumar', 'Computer Applications'), (2, 'BSc CS', 'Dr. Meena',
'Computer Science');

CREATE TABLE Student ( StudentID INT PRIMARY KEY, StudentName VARCHAR(50) NOT NULL, CourseID
INT, FOREIGN KEY (CourseID) REFERENCES Course(CourseID) );
INSERT INTO Student VALUES (101, 'Arun', 1), (102, 'Priya', 1), (103, 'Ravi', 2), (104, 'Suresh', 1);

SELECT * FROM Student; 

SELECT * FROM Course;

SELECT s.StudentID, s.StudentName, c.CourseName, c.FacultyName, c.DepartmentName FROM Student
s INNER JOIN Course c ON s.CourseID = c.CourseID;