drop database if exists Student_Grades;

CREATE DATABASE Student_Grades;

USE Student_Grades;
show tables;




select * from student_grades;

-- Question 1
SELECT COUNT(*) AS Total_Records
FROM student_grades;

-- Question 2
SELECT AVG(Grade) AS Average_Grade
FROM student_grades;

-- Question 3
SELECT MAX(Grade) AS Highest_Grade
FROM student_grades;

-- Question 4
SELECT MIN(Grade) AS Lowest_Grade
FROM student_grades;

-- Question 5
SELECT COUNT(DISTINCT StudentID) AS Total_Students
FROM student_grades;

-- Question 6
SELECT CourseID, AVG(Grade) AS Average_Grade
FROM student_grades
GROUP BY CourseID;

-- Question 7
SELECT Department, COUNT(DISTINCT StudentID) AS Number_Of_Students
FROM student_grades
GROUP BY Department;

-- Question 8
SELECT CourseID, MAX(Grade) AS Maximum_Grade
FROM student_grades
GROUP BY CourseID;

-- Question 9
SELECT Department, MIN(Grade) AS Minimum_Grade
FROM student_grades
GROUP BY Department;

-- Question 10
SELECT StudentID, COUNT(DISTINCT CourseID) AS Number_Of_Courses
FROM student_grades
GROUP BY StudentID;


-- Question 11
SELECT
    CourseID,
    AVG(Grade) AS Average_Grade
FROM Student_Grades
GROUP BY CourseID
HAVING AVG(Grade) > 75;


-- Question 12
SELECT
    StudentID,
    COUNT(DISTINCT CourseID) AS Number_Of_Courses
FROM Student_Grades
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) > 3;


-- Question 13
SELECT
    Department,
    AVG(Grade) AS Average_Grade
FROM Student_Grades
GROUP BY Department
HAVING AVG(Grade) < 65;


-- Question 14
SELECT
    StudentID,
    MAX(Grade) AS Maximum_Grade
FROM Student_Grades
GROUP BY StudentID
HAVING MAX(Grade) = 100;


-- Question 15
SELECT
    CourseID,
    COUNT(DISTINCT StudentID) AS Number_Of_Students
FROM Student_Grades
GROUP BY CourseID
HAVING COUNT(DISTINCT StudentID) >= 20;


-- Question 16
SELECT
    StudentID,
    COUNT(DISTINCT CourseID) AS Number_Of_Courses,
    AVG(Grade) AS Average_Grade
FROM Student_Grades
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) >= 4
AND AVG(Grade) > 80;


-- Question 17
SELECT
    Department,
    MAX(Grade) AS Maximum_Grade,
    AVG(Grade) AS Average_Grade
FROM Student_Grades
GROUP BY Department
HAVING MAX(Grade) >= 2 * AVG(Grade);


-- Question 18
SELECT
    CourseID,
    AVG(Grade) AS Average_Grade
FROM Student_Grades
GROUP BY CourseID
HAVING AVG(Grade) > (
    SELECT AVG(Grade)
    FROM Student_Grades
);


-- Question 19
SELECT
    StudentID,
    MIN(Grade) AS Lowest_Grade
FROM Student_Grades
GROUP BY StudentID
HAVING MIN(Grade) > 70;


-- Question 20
SELECT
    StudentID,
    MIN(Grade) AS Lowest_Grade
FROM Student_Grades
GROUP BY StudentID
HAVING MIN(Grade) > 70;