Lab 1: Use the Student management system Database and table from our previous lab and write a sql query to achieve the below scenario.
Assume you are managing a university database that tracks student enrollments in various courses. You have two tables, "Student" and "Enrollment". 
The goal is to retrieve information about each student's ID, first name, last name, and their enrollment details, including the enrollment ID and 
the associated course ID.
Hint:Use inner join to retrieve data.

-->
mysql> USE StudentManagementSystem;     #Going to use the created Database
Database changed     #Query of getting the Database changed

mysql> DESC Student;     #Describing the Student Table so that we can view its structure
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| StudentID   | varchar(20) | NO   | PRI | NULL    |       |
| FirstName   | varchar(50) | NO   |     | NULL    |       |
| LastName    | varchar(50) | NO   |     | NULL    |       |
| DateOfBirth | date        | NO   |     | NULL    |       |
| Gender      | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(50) | NO   |     | NULL    |       |
| Phone       | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.16 sec)

mysql> DESC Enrollment;     #Describing the Enrollment Table so that we can view its structure
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| EnrollmentID   | varchar(30) | NO   | PRI | NULL    |       |
| EnrollmentDate | date        | NO   |     | NULL    |       |
| StudentID      | varchar(30) | NO   | MUL | NULL    |       |
| CourseID       | varchar(50) | NO   | MUL | NULL    |       |
| InstructorID   | varchar(30) | NO   | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> SELECT *
    -> FROM Student;     #Displaying the entire Student table after inserting records
+-----------+------------+--------------+-------------+--------+------------------------------+------------+
| StudentID | FirstName  | LastName     | DateOfBirth | Gender | Email                        | Phone      |
+-----------+------------+--------------+-------------+--------+------------------------------+------------+
| S01       | Abhira     | Sharma       | 1993-02-15  | Female | abhiras@gmail.com            | 9208629160 |
| S02       | Dwaipayan  | Majumder     | 1999-10-07  | Male   | majumder.dwaipayan@gmail.com | 2938475610 |
| S03       | Deepshikha | Sanyal       | 1996-12-09  | Female | deepasana@gmail.com          | 9582026531 |
| S04       | Siddharth  | Mukherjee    | 2002-05-17  | Male   | sidmukher@gmail.com          | 7191282028 |
| S05       | Priyanka   | Chatterjee   | 2008-09-12  | Female | priyac@gmail.com             | 9320434387 |
| S06       | Juin       | Bandopadhyay | 2005-07-20  | Female | juin@gmail.com               | 9064326983 |
| S07       | Rajarshi   | Jain         | 2014-10-22  | Male   | rajain@gmail.com             | 9144215346 |
| S08       | Bidya      | Dasgupta     | 2011-04-29  | Female | bidyas@gmail.com             | 9124176644 |
| S09       | Aranya     | Sen          | 2020-11-16  | Male   | aranya@gmailcom              | 9074536794 |
| S10       | Pinky      | Ghosh        | 2017-07-25  | Female | pinkg@gmail.com              | 9425453327 |
+-----------+------------+--------------+-------------+--------+------------------------------+------------+
10 rows in set (0.01 sec)

mysql> SELECT *
    -> FROM Enrollment;     #Displaying the entire Enrollment table after inserting records
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
| E01          | 2001-10-05     | S01       | C01      | I01          |
| E02          | 2000-05-19     | S02       | C02      | I02          |
| E03          | 2001-12-26     | S03       | C03      | I03          |
| E04          | 2002-09-14     | S04       | C04      | I04          |
| E05          | 1998-11-20     | S05       | C05      | I05          |
| E06          | 2011-02-19     | S06       | C06      | I06          |
| E07          | 2000-12-28     | S07       | C07      | I07          |
| E08          | 1996-06-30     | S08       | C08      | I08          |
| E09          | 1990-03-19     | S09       | C09      | I09          |
| E10          | 2003-08-11     | S10       | C10      | I10          |
+--------------+----------------+-----------+----------+--------------+
10 rows in set (0.01 sec)

#Displaying the information about each student's ID, first name, last name, and their enrollment details, including the enrollment ID and the 
associated course ID.
mysql> SELECT s.StudentID,s.FirstName,s.LastName,e.EnrollmentId,e.CourseID
    -> FROM Student s
    -> INNER JOIN Enrollment e ON s.StudentID=e.StudentID;
+-----------+------------+--------------+--------------+----------+--------------+
| StudentID | FirstName  | LastName     | EnrollmentID | CourseID | InstructorID |
+-----------+------------+--------------+--------------+----------------+--------+
| S01       | Abhira     | Sharma       | E01          | C01      | I01          |
| S02       | Dwaipayan  | Majumder     | E02          | C02      | I02          |
| S03       | Deepshikha | Sanyal       | E03          | C03      | I03          |
| S04       | Siddharth  | Mukherjee    | E04          | C04      | I04          |
| S05       | Priyanka   | Chatterjee   | E05          | C05      | I05          |
| S06       | Juin       | Bandopadhyay | E06          | C06      | I06          |
| S07       | Rajarshi   | Jain         | E07          | C07      | I07          |
| S08       | Bidya      | Dasgupta     | E08          | C08      | I08          |
| S09       | Aranya     | Sen          | E09          | C09      | I09          |
| S10       | Pinky      | Ghosh        | E10          | C10      | I10          |
+-----------+------------+--------------+--------------+----------------+--------+
10 rows in set (0.14 sec)