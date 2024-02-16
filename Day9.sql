Lab: Use the Student Management System Database and table from previous lab.Perform the following commands on the table Student and Enrollment.
1. Let's consider a scenario where you have a database tracking student enrollments and some students may not be enrolled in any courses.
John Doe (StudentID: 1) is enrolled in courses with EnrollmentIDs 101 and 102.
Jane Smith (StudentID: 2) is enrolled in courses with EnrollmentIDs 103 and 104.
Bob Johnson (StudentID: 3) is not enrolled in any courses.
Now,run RIGHT OUTER JOIN query to retrieve data.

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
| 1         | John       | Doe          | 2000-09-20  | Male   | john.doe@gmail.com           | 9018286386 |
| 2         | Jane       | Smith        | 1997-02-27  | Female | janesm@gmail.com             | 9212923930 |
| 3         | Bob        | Johnson      | 2007-10-01  | Male   | bobjhn@gmail.com             | 9019288298 |
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
13 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM Enrollment;     #Displaying the entire Enrollment table after inserting records
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
| 101          | 2010-08-20     | 1         | C11      | I11          |
| 102          | 2015-09-11     | 1         | C12      | I12          |
| 103          | 2007-02-09     | 2         | C13      | I13          |
| 104          | 2012-08-26     | 2         | C14      | I14          |
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
14 rows in set (0.00 sec)

#Displaying the Student table after performing Right Outer Join to retreive the details
mysql> SELECT s.StudentID,s.FirstName,s.LastName,e.EnrollmentId,e.CourseID
    -> FROM Student s
    -> RIGHT OUTER JOIN Enrollment e ON s.StudentID=e.StudentID;
+-----------+------------+--------------+--------------+----------+
| StudentID | FirstName  | LastName     | EnrollmentId | CourseID |
+-----------+------------+--------------+--------------+----------+
| 1         | John       | Doe          | 101          | C11      |
| 1         | John       | Doe          | 102          | C12      |
| 2         | Jane       | Smith        | 103          | C13      |
| 2         | Jane       | Smith        | 104          | C14      |
| S01       | Abhira     | Sharma       | E01          | C01      |
| S02       | Dwaipayan  | Majumder     | E02          | C02      |
| S03       | Deepshikha | Sanyal       | E03          | C03      |
| S04       | Siddharth  | Mukherjee    | E04          | C04      |
| S05       | Priyanka   | Chatterjee   | E05          | C05      |
| S06       | Juin       | Bandopadhyay | E06          | C06      |
| S07       | Rajarshi   | Jain         | E07          | C07      |
| S08       | Bidya      | Dasgupta     | E08          | C08      |
| S09       | Aranya     | Sen          | E09          | C09      |
| S10       | Pinky      | Ghosh        | E10          | C10      |
+-----------+------------+--------------+--------------+----------+
14 rows in set (0.01 sec)


2. Assume a university where students can enroll in various courses. Here are some fictional details:
Student Information:
Student with ID 1: John, email: john@email.com
Student with ID 2: Jane, email: jane@email.com
Student with ID 3: Bob, email: bob@email.com
Enrollment Information:
Enrollment with ID 101: John (StudentID: 1) enrolls in Math (CourseID: MATH101).
Enrollment with ID 102: John (StudentID: 1) enrolls in History (CourseID: HIST201).
Enrollment with ID 103: Jane (StudentID: 2) enrolls in Physics (CourseID: PHYS301).
Enrollment with ID 104: Bob (StudentID: 3) enrolls in Chemistry (CourseID: CHEM401).
Enrollment with ID 105: Alice (StudentID: 4) enrolls in English (CourseID: ENG501).
Now, write a LEFT JOIN query to retrieve the data.

-->
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
| 1         | John       | Doe          | 2000-09-20  | Male   | john@email.com               | 9018286386 |
| 2         | Jane       | Smith        | 1997-02-27  | Female | jane@email.com               | 9212923930 |
| 3         | Bob        | Johnson      | 2007-10-01  | Male   | bob@email.com                | 9019288298 |
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
13 rows in set (0.01 sec)

mysql> SELECT *
    -> FROM Enrollment;     #Displaying the entire Enrollment table after inserting records
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
| 101          | 2010-08-20     | 1         | C11      | I11          |
| 102          | 2015-09-11     | 1         | C12      | I12          |
| 103          | 2007-02-09     | 2         | C13      | I13          |
| 104          | 2012-08-26     | 2         | C14      | I14          |
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
14 rows in set (0.00 sec)

#Displaying the Student table afer performing the Left Join to retreive the data
mysql> SELECT s.StudentID,s.FirstName,s.LastName,e.EnrollmentId,e.CourseID
    -> FROM Student s
    -> LEFT JOIN Enrollment e ON s.StudentID=e.StudentID;
+-----------+------------+--------------+--------------+----------+
| StudentID | FirstName  | LastName     | EnrollmentId | CourseID |
+-----------+------------+--------------+--------------+----------+
| 1         | John       | Doe          | 101          | C11      |
| 1         | John       | Doe          | 102          | C12      |
| 2         | Jane       | Smith        | 103          | C13      |
| 2         | Jane       | Smith        | 104          | C14      |
| 3         | Bob        | Johnson      | NULL         | NULL     |
| S01       | Abhira     | Sharma       | E01          | C01      |
| S02       | Dwaipayan  | Majumder     | E02          | C02      |
| S03       | Deepshikha | Sanyal       | E03          | C03      |
| S04       | Siddharth  | Mukherjee    | E04          | C04      |
| S05       | Priyanka   | Chatterjee   | E05          | C05      |
| S06       | Juin       | Bandopadhyay | E06          | C06      |
| S07       | Rajarshi   | Jain         | E07          | C07      |
| S08       | Bidya      | Dasgupta     | E08          | C08      |
| S09       | Aranya     | Sen          | E09          | C09      |
| S10       | Pinky      | Ghosh        | E10          | C10      |
+-----------+------------+--------------+--------------+----------+
15 rows in set (0.01 sec)