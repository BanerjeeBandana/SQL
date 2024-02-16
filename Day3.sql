Lab 1. For this assignment, please use the same tables created in your previous
lab session.
Task 1: Update the Student table with the following information:
Change the email to 'jane_Smith@example.com'
Where FirstName is 'Jane' and LastName is 'Smith';
Update the Instructor with the following information:
Change the email to 'rogerwhite@example.com'
Where FirstName of the instructor is 'Roger' and LastName is 'White';

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
7 rows in set (0.12 sec)

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

mysql> INSERT INTO Student VALUES('S06','Jane','Smith','1995-04-29','Male','jane.945@gmail.com','9127932738');
Query OK, 1 row affected (0.04 sec)     #Displaying a message that the query is successful

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
| S06       | Jane       | Smith      | 1995-04-29  | Male   | jane.945@gmail.com           | 9127932738 |
+-----------+------------+------------+-------------+--------+------------------------------+------------+
6 rows in set (0.00 sec)

mysql> UPDATE Student
    -> SET Email='jane_Smith@example.com'
    -> WHERE FirstName='Jane' AND LastName='Smith';     #Updating table according to given conditions
Query OK, 1 row affected (0.03 sec)     #Displaying a message that the query is successful
Rows matched: 1  Changed: 1  Warnings: 0

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
| S06       | Jane       | Smith      | 1995-04-29  | Male   | jane_Smith@example.com       | 9127932738 |
+-----------+------------+------------+-------------+--------+------------------------------+------------+
6 rows in set (0.00 sec)


mysql> DESC Instructor;     #Describing the Instructor Table so that we can view its structure
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| InstructorID | varchar(20) | NO   | PRI | NULL    |       |
| FirstName    | varchar(50) | NO   |     | NULL    |       |
| LastName     | varchar(50) | NO   |     | NULL    |       |
| EmaiL        | varchar(50) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.05 sec)

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
5 rows in set (0.01 sec)

mysql> INSERT INTO Instructor VALUES('I06','Roger','White','rogerw@gmail.com');     #Inserting 1 record into Instructor table
Query OK, 1 row affected (0.01 sec)     #Displaying a message that the query is successful

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
| I06          | Roger     | White       | rogerw@gmail.com   |
+--------------+-----------+-------------+--------------------+
6 rows in set (0.01 sec)

mysql> UPDATE Instructor
    -> SET Email='rogerwhite@example.com'
    -> WHERE FirstName='Roger' AND LastName='White';     #Updating table according to given conditions
Query OK, 1 row affected (0.02 sec)     #Displaying a message that the query is successful
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT *
    -> FROM Instructor;     #Displaying the entire Instructor table after inserting records
+--------------+-----------+-------------+------------------------+
| InstructorID | FirstName | LastName    | EmaiL                  |
+--------------+-----------+-------------+------------------------+
| I01          | Ankan     | Das         | ankan@gmail.com        |
| I02          | Bibhabori | Banerjee    | bibha@gmail.com        |
| I03          | Arghadeep | Ghosh       | arghag@gmail.com       |
| I04          | Megha     | Chakraborty | meghac@gmail.com       |
| I05          | Anshuman  | Majumder    | anshu.01@gmail.com     |
| I06          | Roger     | White       | rogerwhite@example.com |
+--------------+-----------+-------------+------------------------+
6 rows in set (0.00 sec)


Task 2:
Delete record from the Student table on following condition:
Delete student/students records from the Student table where last name is Smith.

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
7 rows in set (0.22 sec)

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
| S06       | Jane       | Smith      | 1995-04-29  | Male   | jane_Smith@example.com       | 9127932738 |
+-----------+------------+------------+-------------+--------+------------------------------+------------+
6 rows in set (0.01 sec)

mysql> DELETE
    -> FROM Student
    -> WHERE LastName='Smith';     #Deleting row of the table according to given condition
Query OK, 1 row affected (0.06 sec)     #Displaying a message that the query is successful

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
5 rows in set (0.00 sec)


Task 3: List the student whose first name starts with J.

-->
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
5 rows in set (0.00 sec)

#Inserting 1 record into Student table
mysql> INSERT INTO Student VALUES('S06','Juin','Bandopadhyay','1995-07-20','Female','juin@gmail.com','9064326983');     
Query OK, 1 row affected (0.02 sec)     #Displaying a message that the query is successful

mysql> SELECT *
    -> FROM Student;     #Displaying the entire Student table after inserting records
+-----------+------------+--------------+-------------+--------+------------------------------+------------+
| StudentID | FirstName  | LastName     | DateOfBirth | Gender | Email                        | Phone      |
+-----------+------------+--------------+-------------+--------+------------------------------+------------+
| S01       | Abhira     | Sharma       | 1997-02-15  | Female | abhiras@gmail.com            | 9208629160 |
| S02       | Dwaipayan  | Majumder     | 2001-10-07  | Male   | majumder.dwaipayan@gmail.com | 2938475610 |
| S03       | Deepshikha | Sanyal       | 2000-12-09  | Female | deepasana@gmail.com          | 9582026531 |
| S04       | Siddharth  | Mukherjee    | 1995-05-17  | Male   | sidmukher@gmail.com          | 7191282028 |
| S05       | Priyanka   | Chatterjee   | 2004-09-12  | Female | priyac@gmail.com             | 9320434387 |
| S06       | Juin       | Bandopadhyay | 1995-07-20  | Female | juin@gmail.com               | 9064326983 |
+-----------+------------+--------------+-------------+--------+------------------------------+------------+
6 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM Student
    -> WHERE FirstName LIKE 'J%';     #Displaying table according to given condition
+-----------+-----------+--------------+-------------+--------+----------------+------------+
| StudentID | FirstName | LastName     | DateOfBirth | Gender | Email          | Phone      |
+-----------+-----------+--------------+-------------+--------+----------------+------------+
| S06       | Juin      | Bandopadhyay | 1995-07-20  | Female | juin@gmail.com | 9064326983 |
+-----------+-----------+--------------+-------------+--------+----------------+------------+
1 row in set (0.01 sec)


Lab 2.Database Schema:
Consider a simple database with one tables: Employee
Employee Table:
● Columns: emp_id (Primary Key), first_name, last_name, age, email)

-->
mysql> CREATE TABLE Employee     #Creating a table whose name is Employee
    -> (
    -> emp_id VARCHAR(20) PRIMARY KEY,     #Defining emp_id as Primary Key
    -> first_name VARCHAR(50) NOT NULL,     #Specifying first_name as a non-null column
    -> last_name VARCHAR(50) NOT NULL,     #Specifying last_name as a non-null column
    -> age INT NOT NULL,     #Specifying age as a non-null column
    -> email VARCHAR(50) NOT NULL     #Specifying email as a non-null column
    -> );
Query OK, 0 rows affected (0.36 sec)     #Displaying a message that the query is successful

mysql> DESC Employee;     #Describing the Employee Table so that we can view its structure
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | varchar(20) | NO   | PRI | NULL    |       |
| first_name | varchar(50) | NO   |     | NULL    |       |
| last_name  | varchar(50) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| email      | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.09 sec)


Task 1: Insert Data
Write an SQL INSERT statement to insert data into the Employee table.

-->
mysql> DESC Employee;     #Describing the Employee Table so that we can view its structure
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | varchar(20) | NO   | PRI | NULL    |       |
| first_name | varchar(50) | NO   |     | NULL    |       |
| last_name  | varchar(50) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| email      | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.09 sec)

mysql> INSERT INTO Employee     #Inserting 6 records into Employee table
    -> VALUES('EM01','Abhay','Sharma',35,'abhays@gmail.com'),
    -> ('EM02','Gargi','Mallick',24,'gargimallick@gmail.com'),
    -> ('EM03','Sayantan','Das',30,'arko.sayantan@gmail.com'),
    -> ('EM04','Rohini','Sen Yadav',38,'rose@gmail.com'),
    -> ('EM05','Rohan','Kumar',21,'kumar_rohan@gmail.com'),
    -> ('EM06','Divya','Sen',32,'divyas@gmailcom');
Query OK, 6 rows affected (0.06 sec)     #Displaying a message that the query is successful
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT *
    -> FROM Employee;     #Displaying the entire Employee table after inserting records
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| EM01   | Abhay      | Sharma    |  35 | abhays@gmail.com        |
| EM02   | Gargi      | Mallick   |  24 | gargimallick@gmail.com  |
| EM03   | Sayantan   | Das       |  30 | arko.sayantan@gmail.com |
| EM04   | Rohini     | Sen Yadav |  38 | rose@gmail.com          |
| EM05   | Rohan      | Kumar     |  21 | kumar_rohan@gmail.com   |
| EM06   | Divya      | Sen       |  32 | divyas@gmailcom         |
+--------+------------+-----------+-----+-------------------------+
6 rows in set (0.01 sec)


Task 2: Retrieving Data
Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee 
table.

-->
mysql> SELECT first_name,last_name
    -> FROM Employee;     #Displaying table according to given conditions
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Abhay      | Sharma    |
| Gargi      | Mallick   |
| Sayantan   | Das       |
| Rohini     | Sen Yadav |
| Rohan      | Kumar     |
| Divya      | Sen       |
+------------+-----------+
6 rows in set (0.00 sec)


Task 3: Filtering Data
Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 
30 years.

-->
mysql> SELECT first_name,last_name,age
    -> FROM Employee
    -> WHERE age>30;     #Displaying table according to given conditions
+------------+-----------+-----+
| first_name | last_name | age |
+------------+-----------+-----+
| Abhay      | Sharma    |  35 |
| Rohini     | Sen Yadav |  38 |
| Divya      | Sen       |  32 |
+------------+-----------+-----+
3 rows in set (0.01 sec)


Task 4: Updating Data
Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 25.

-->
mysql> UPDATE Employee
    -> SET age=age+1
    -> WHERE age>25;     #Updating table according to given condition
Query OK, 4 rows affected (0.01 sec)     #Displaying a message that the query is successful
Rows matched: 4  Changed: 4  Warnings: 0

mysql> SELECT *
    -> FROM Employee;     #Displaying the entire Employee table after inserting records
+--------+------------+-----------+-----+-------------------------+
| emp_id | first_name | last_name | age | email                   |
+--------+------------+-----------+-----+-------------------------+
| EM01   | Abhay      | Sharma    |  36 | abhays@gmail.com        |
| EM02   | Gargi      | Mallick   |  24 | gargimallick@gmail.com  |
| EM03   | Sayantan   | Das       |  31 | arko.sayantan@gmail.com |
| EM04   | Rohini     | Sen Yadav |  39 | rose@gmail.com          |
| EM05   | Rohan      | Kumar     |  21 | kumar_rohan@gmail.com   |
| EM06   | Divya      | Sen       |  33 | divyas@gmailcom         |
+--------+------------+-----------+-----+-------------------------+
6 rows in set (0.00 sec)