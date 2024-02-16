Lab 1. Use the Database and table from Day 1 lab. Insert 5 records in each table and retrieve data from all tables and display.

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
7 rows in set (0.65 sec)

mysql> INSERT INTO Student     #Inserting 5 records into Student table
    -> VALUES('S01','Abhira','Sharma','1997-02-15','Female','abhiras@gmail.com','9208629160'),
    -> ('S02','Dwaipayan','Majumder','2001-10-07','Male','majumder.dwaipayan@gmail.com','2938475610'),
    -> ('S03','Deepshikha','Sanyal','2000-12-09','Female','deepasana@gmail.com','9582026531'),
    -> ('S04','Siddharth','Mukherjee','1995-05-17','Male','sidmukher@gmail.com','7191282028'),
    -> ('S05','Priyanka','Chatterjee','2004-09-12','Female','priyac@gmail.com','9320434387');
Query OK, 5 rows affected (0.08 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT *
    -> FROM Student;     #Displaying the entire Student table after inserting records
+-----------+------------+------------+-------------+--------+------------------------------+------------+
| StudentID | FirstName  | LastName   | DateOfBirth | Gender | Email                        | Phone      |
+-----------+------------+------------+-------------+--------+------------------------------+------------+
| S01       | Abhira     | Sharma     | 1997-02-15  | Female | abhiras@gmail.com            | 9208629160 |
| S02       | Dwaipayan  | Majumder   | 2001-10-07  | Male   | majumder.dwaipayan@gmail.com | 2938475610 |
| S03       | Deepshikha | Sanyal     | 2000-12-09  | Female | deepasana@gmail.com          | 9582026531 |
| S04       | Siddharth  | Mukherjee  | 1995-05-17  | Male   | sidmukher@gmail.com          | 7191282028 |
| S05       | Priyanka   | Chatterjee | 2004-09-12  | Female | priyac@gmail.com             | 9320434387 |
+-----------+------------+------------+-------------+--------+------------------------------+------------+
5 rows in set (0.01 sec)


mysql> DESC Course;     #Describing the Course Table so that we can view its structure
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| CourseID    | varchar(20) | NO   | PRI | NULL    |       |
| CourseTitle | varchar(50) | NO   |     | NULL    |       |
| Credits     | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.16 sec)

mysql> INSERT INTO Course     #Inserting 5 records into Course table
    -> VALUES('C01','Mathematics','5'),
    -> ('C02','Science','4'),
    -> ('C03','English','5'),
    -> ('C04','Computer','5'),
    -> ('C05','Social Science','4');
Query OK, 5 rows affected (0.08 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT *
    -> FROM Course;     #Displaying the entire Course table after inserting records
+----------+----------------+---------+
| CourseID | CourseTitle    | Credits |
+----------+----------------+---------+
| C01      | Mathematics    | 5       |
| C02      | Science        | 4       |
| C03      | English        | 5       |
| C04      | Computer       | 5       |
| C05      | Social Science | 4       |
+----------+----------------+---------+
5 rows in set (0.00 sec)


mysql> DESC Instructor;     #Describing the Instructor Table so that we can view its structure
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| InstructorID | varchar(20) | NO   | PRI | NULL    |       |
| FirstName    | varchar(50) | NO   |     | NULL    |       |
| LastName     | varchar(50) | NO   |     | NULL    |       |
| EmaiL        | varchar(50) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

mysql> INSERT INTO Instructor     #Inserting 5 records into Instructor table
    -> VALUES('I01','Ankan','Das','ankan@gmail.com'),
    -> ('I02','Bibhabori','Banerjee','bibha@gmail.com'),
    -> ('I03','Arghadeep','Ghosh','arghag@gmail.com'),
    -> ('I04','Megha','Chakraborty','meghac@gmail.com'),
    -> ('I05','Anshuman','Majumder','anshu.01@gmail.com');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT *
    -> FROM Instructor;     #Displaying the entire Instructor table after inserting records
+--------------+-----------+-------------+--------------------+
| InstructorID | FirstName | LastName    | EmaiL              |
+--------------+-----------+-------------+--------------------+
| I01          | Ankan     | Das         | ankan@gmail.com    |
| I02          | Bibhabori | Banerjee    | bibha@gmail.com    |
| I03          | Arghadeep | Ghosh       | arghag@gmail.com   |
| I04          | Megha     | Chakraborty | meghac@gmail.com   |
| I05          | Anshuman  | Majumder    | anshu.01@gmail.com |
+--------------+-----------+-------------+--------------------+
5 rows in set (0.00 sec)


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
5 rows in set (0.02 sec)

mysql> INSERT INTO Enrollment     #Inserting 5 records into Enrollment table
    -> VALUES('E01','2001-10-05','S01','C01','I01'),
    -> ('E02','2000-05-19','S02','C02','I02'),
    -> ('E03','2001-12-26','S03','C03','I03'),
    -> ('E04','2002-09-14','S04','C04','I04'),
    -> ('E05','1998-11-20','S05','C05','I05');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT  *
    -> FROM Enrollment;     #Displaying the entire Enrollment table after inserting records
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
| E01          | 2001-10-05     | S01       | C01      | I01          |
| E02          | 2000-05-19     | S02       | C02      | I02          |
| E03          | 2001-12-26     | S03       | C03      | I03          |
| E04          | 2002-09-14     | S04       | C04      | I04          |
| E05          | 1998-11-20     | S05       | C05      | I05          |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.01 sec)


mysql> DESC Score;     #Describing the Score Table so that we can view its structure
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| ScoreID        | varchar(30) | NO   | PRI | NULL    |       |
| CourseID       | varchar(50) | NO   | MUL | NULL    |       |
| StudentID      | varchar(30) | NO   | MUL | NULL    |       |
| DateOfExam     | date        | NO   |     | NULL    |       |
| CreditObtained | varchar(20) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> INSERT INTO Score     #Inserting 5 records into Score table
    -> VALUES('SC01','C01','S01','2001-10-29','5'),
    -> ('SC02','C02','S02','2004-12-19','4'),
    -> ('SC03','C03','S03','2002-02-25','5'),
    -> ('SC04','C04','S04','2007-11-20','3'),
    -> ('SC05','C05','S05','2001-08-31','5');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT *
    -> FROM Score;     #Displaying the entire Score table after inserting records
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
| SC01    | C01      | S01       | 2001-10-29 | 5              |
| SC02    | C02      | S02       | 2004-12-19 | 4              |
| SC03    | C03      | S03       | 2002-02-25 | 5              |
| SC04    | C04      | S04       | 2007-11-20 | 3              |
| SC05    | C05      | S05       | 2001-08-31 | 5              |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)


mysql> DESC Feedback;     #Describing the Feedback Table so that we can view its structure
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| FeedbackID     | varchar(20)  | NO   | PRI | NULL    |       |
| StudentID      | varchar(30)  | NO   | MUL | NULL    |       |
| Date           | date         | NO   |     | NULL    |       |
| InstructorName | varchar(50)  | NO   |     | NULL    |       |
| Feedback       | varchar(100) | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.07 sec)

mysql> INSERT INTO Feedback     #Inserting 5 records into Feedback table
    -> VALUES('F01','S01','2001-09-17','Bitan','Very good'),
    -> ('F02','S02','2007-10-26','Aheli','Expert at Teaching'),
    -> ('F03','S03','2000-12-30','Rohit','Very much useful'),
    -> ('F04','S04','2003-11-29','Aashna','Wonderful'),
    -> ('F05','S05','2004-05-19','Freddy','Good at explaining things');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT *
    -> FROM Feedback;     #Displaying the entire Feedback table after inserting records
+------------+-----------+------------+----------------+---------------------------+
| FeedbackID | StudentID | Date       | InstructorName | Feedback                  |
+------------+-----------+------------+----------------+---------------------------+
| F01        | S01       | 2001-09-17 | Bitan          | Very good                 |
| F02        | S02       | 2007-10-26 | Aheli          | Expert at Teaching        |
| F03        | S03       | 2000-12-30 | Rohit          | Very much useful          |
| F04        | S04       | 2003-11-29 | Aashna         | Wonderful                 |
| F05        | S05       | 2004-05-19 | Freddy         | Good at explaining things |
+------------+-----------+------------+----------------+---------------------------+
5 rows in set (0.00 sec)