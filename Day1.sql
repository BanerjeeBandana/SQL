Lab 1. Create a Database & Table Using MySQL Command-Line Client.
● Create a database with the name StudentManagementSystem.

-->
mysql> CREATE DATABASE StudentManagementSystem;     #Creating a Database of Student Management System
Query OK, 1 row affected (0.10 sec)     #Displaying a message that the query is successful

mysql> USE StudentManagementSystem;     #Going to use the created Database
Database changed     #Query of getting the Database changed


Create a table with named Student with attributes:
● StudentID (Primary Key)
● FirstName
● LastName
● DateOfBirth
● Gender
● Email
● Phone

-->
mysql> CREATE TABLE Student     #Creating a table whose name is Student
    -> (
    -> StudentID VARCHAR(20) PRIMARY KEY,     #Defining StudentID as Primary Key
    -> FirstName VARCHAR(50) NOT NULL,     #Specifying FirstName as a non-null column
    -> LastName VARCHAR(50) NOT NULL,     #Specifying LastName as a non-null column
    -> DateOfBirth DATE NOT NULL,     #Specifying DateOfBirth as a non-null column
    -> Gender VARCHAR(10) NOT NULL,     #Specifying Gender as a non-null column
    -> Email VARCHAR(50) NOT NULL,     #Specifying Email as a non-null column
    -> Phone VARCHAR(20) NOT NULL     #Specifying Phone as a non-null column
    -> );
Query OK, 0 rows affected (0.37 sec)     #Displaying a message that the query is successful


Create a table with name Course with attributes:
● CourseID (Primary Key)
● CourseTitle
● Credits

-->
mysql> CREATE TABLE Course     #Creating a table whose name is Course
    -> (
    -> CourseID VARCHAR(20) PRIMARY KEY,     #Defining CourseID as Primary Key
    -> CourseTitle VARCHAR(50) NOT NULL,     #Specifying CourseTitle as a non-null column
    -> Credits VARCHAR(20) NOT NULL     #Specifying Credits as a non-null column
    -> );
Query OK, 0 rows affected (0.24 sec)     #Displaying a message that the query is successful


Create a table with named Instructor with attributes:
● InstructorID (Primary Key)
● FirstName
● LastName
● Email

-->
mysql> CREATE TABLE Instructor     #Creating a table whose name is Instructor
    -> (
    -> InstructorID VARCHAR(20) PRIMARY KEY,     #Defining InstructorID as Primary Key
    -> FirstName VARCHAR(50) NOT NULL,     #Specifying FirstName as a non-null column
    -> LastName VARCHAR(50) NOT NULL,     #Specifying LastName as a non-null column
    -> EmaiL VARCHAR(50) NOT NULL     #Specifying Email as a non-null column
    -> );
Query OK, 0 rows affected (0.04 sec)     #Displaying a message that the query is successful


Create a table with named Enrollment with attributes:
● EnrollmentID (Primary Key)
● EnrollmentDate
● StudentID(Foreign key)
● CourseID(Foreign Key)
● InstructorID(Foreign key)

-->
mysql> CREATE TABLE Enrollment     #Creating a table whose name is Enrollment
    -> (
    -> EnrollmentID VARCHAR(30) PRIMARY KEY,     #Defining EnrollmentID as Primary Key
    -> EnrollmentDate DATE NOT NULL,     #Specifying EnrollmentDate as a non-null column
    -> StudentID VARCHAR(30) NOT NULL,     #Specifying StudentID as a non-null column
    -> CourseID VARCHAR(50) NOT NULL,     #Specifying CourseID as a non-null column
    -> InstructorID VARCHAR(30) NOT NULL,     #Specifying InstructorID as a non-null column
    -> FOREIGN KEY (StudentID) REFERENCES Student (StudentID),     #Foreign Key constraint StudentID is linked up to the Student table
    -> FOREIGN KEY (CourseID) REFERENCES Course (CourseID),     #Foreign Key constraint CourseID is linked up to the Course table
    -> FOREIGN KEY (InstructorID) REFERENCES Instructor (InstructorID)     #Foreign Key constraint InstructorID is linked up to the Instructor table
    -> );
Query OK, 0 rows affected (0.35 sec)     #Displaying a message that the query is successful


Create a table with named Score with attributes:
● ScoreID (Primary Key)
● CourseID (Foreign key)
● StudentID (Foreign Key)
● DateOfExam
● CreditObtained

-->
mysql> CREATE TABLE Score     #Creating a table whose name is Score
    -> (
    -> ScoreID VARCHAR(30) PRIMARY KEY,     #Defining ScoreID as Primary Key
    -> CourseID VARCHAR(50) NOT NULL,     #Specifying CourseID as a non-null column
    -> StudentID VARCHAR(30) NOT NULL,     #Specifying StudentID as a non-null column
    -> DateOfExam DATE NOT NULL,     #Specifying DateOfExam as a non-null column
    -> CreditObtained VARCHAR(20) NOT NULL,     #Specifying CreditObtained as a non-null column
    -> FOREIGN KEY (CourseID) REFERENCES Course (CourseID),     #Foreign Key constraint CourseID is linked up to the Course table
    -> FOREIGN KEY (StudentID) REFERENCES Student (StudentID)     #Foreign Key constraint StudentID is linked up to the Student table
    -> );
Query OK, 0 rows affected (0.28 sec)     #Displaying a message that the query is successful


Create a table with named Feedback with attributes:
● FeedbackID (Primary Key)
● StudentID (Foreign key)
● Date
● InstructorName
● Feedback

-->
mysql> CREATE TABLE Feedback     #Creating a table whose name is Feedback
    -> (
    -> FeedbackID VARCHAR(20) PRIMARY KEY,     #Defining FeedbackID as Primary Key
    -> StudentID VARCHAR(30) NOT NULL,     #Specifying StudentID as a non-null column
    -> Date DATE NOT NULL,     #Specifying Date as a non-null column
    -> InstructorName VARCHAR(50) NOT NULL,     #Specifying InstructorName as a non-null column
    -> Feedback VARCHAR(100) NOT NULL,     #Specifying Feedback as a non-null column
    -> FOREIGN KEY (StudentID) REFERENCES Student (StudentID)     #Foreign Key constraint StudentID is linked up to the Student table
    -> );
Query OK, 0 rows affected (0.12 sec)     #Displaying a message that the query is successful