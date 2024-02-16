Database Schema:
Use the same database scheme created in previous lab.

Assignment 1:
Task1: Assume you are managing a database of student records, and you need to retrieve information about students born after June 16, 2009. What will
be the sql query for this?

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
13 rows in set (0.06 sec)

mysql> SELECT *
    -> FROM Student
    -> WHERE DateOfBirth>'2009-06-16';     #Displaying Student information who are born after June 16, 2009
+-----------+-----------+----------+-------------+--------+------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email            | Phone      |
+-----------+-----------+----------+-------------+--------+------------------+------------+
| S07       | Rajarshi  | Jain     | 2014-10-22  | Male   | rajain@gmail.com | 9144215346 |
| S08       | Bidya     | Dasgupta | 2011-04-29  | Female | bidyas@gmail.com | 9124176644 |
| S09       | Aranya    | Sen      | 2020-11-16  | Male   | aranya@gmailcom  | 9074536794 |
| S10       | Pinky     | Ghosh    | 2017-07-25  | Female | pinkg@gmail.com  | 9425453327 |
+-----------+-----------+----------+-------------+--------+------------------+------------+
4 rows in set (0.01 sec)


Task2: Assume you have a database containing a "Student" table with information about students, including their first names. You want to retrieve 
records of students whose first names start with either 'A' or 'J'. To achieve this,what will be your sql query?

-->
mysql> SELECT *
    -> FROM Student;     #Displaying the original Student table
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
13 rows in set (0.06 sec)

mysql> SELECT *
    -> FROM Student
    -> WHERE FirstName LIKE 'A%' OR FirstName LIKE 'J%';     #Displaying Student information whose first names start with either 'A' or 'J'
+-----------+-----------+--------------+-------------+--------+-------------------+------------+
| StudentID | FirstName | LastName     | DateOfBirth | Gender | Email             | Phone      |
+-----------+-----------+--------------+-------------+--------+-------------------+------------+
| 1         | John      | Doe          | 2000-09-20  | Male   | john@email.com    | 9018286386 |
| 2         | Jane      | Smith        | 1997-02-27  | Female | jane@email.com    | 9212923930 |
| S01       | Abhira    | Sharma       | 1993-02-15  | Female | abhiras@gmail.com | 9208629160 |
| S06       | Juin      | Bandopadhyay | 2005-07-20  | Female | juin@gmail.com    | 9064326983 |
| S09       | Aranya    | Sen          | 2020-11-16  | Male   | aranya@gmailcom   | 9074536794 |
+-----------+-----------+--------------+-------------+--------+-------------------+------------+
5 rows in set (0.01 sec)


Task 3 .Let's consider a scenario where you have a database with a "Student" table that contains information about students, including their first 
names and email addresses.You want to retrieve records of students whose first name is not 'Alice' and whose email addresses contain the domain 
'@example.com'. To achieve this, what will be your sql query?

-->
mysql> SELECT *
    -> FROM Student;     #Displaying the original Student table
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
13 rows in set (0.06 sec)

#Displaying Student information whose first name is not 'Alice' and whose email addresses contain the domain '@gmail.com'
mysql> SELECT *
    -> FROM Student
    -> WHERE (FirstName!='Alice' AND Email LIKE '%@gmail.com');
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
| S10       | Pinky      | Ghosh        | 2017-07-25  | Female | pinkg@gmail.com              | 9425453327 |
+-----------+------------+--------------+-------------+--------+------------------------------+------------+
9 rows in set (0.03 sec)



Assignment 2:
Task1: Create a table Person with PersonID int, FirstName varchar(255),LastName varchar(255) and age (int).
Make PersonID PRIMARY KEY.

-->
mysql> CREATE TABLE Person     #Creating a table whose name is Person
    -> (
    -> PersonID INT PRIMARY KEY,     #Defining PersonID as Primary Key
    -> FirstName VARCHAR(50) NOT NULL,     #Specifying FirstName as a non-null column
    -> LastName VARCHAR(50) NOT NULL,     #Specifying LastName as a non-null column
    -> age INT NOT NULL     #Specifying age as a non-null column
    -> );
Query OK, 0 rows affected (0.13 sec)     #Displaying a message that the query is successful


Task2: Create a table Employee with emp_id int, first_name varchar(255), last_name varchar(255) and age (int )
Make emp_id PRIMARY KEY.

-->
mysql> CREATE TABLE Employee     #Creating a table whose name is Employee
    -> (
    -> emp_id INT PRIMARY KEY,     #Defining emp_id as Primary Key
    -> first_name VARCHAR(50) NOT NULL,     #Specifying first_name as a non-null column
    -> last_name VARCHAR(50) NOT NULL,     #Specifying last_name as a non-null column
    -> age INT NOT NULL     #Specifying age as a non-null column
    -> );
Query OK, 0 rows affected (0.07 sec)     #Displaying a message that the query is successful


Task 3: Insert data to Person table.

-->
mysql> INSERT INTO Person     #Inserting 6 records into Person table
    -> VALUES(7,'Priyanshu','Ranjan',40),
    -> (8,'Aditi','Goswami',36),
    -> (9,'Raghav','Chatterjee',54),
    -> (10,'Ankita','Das',22),
    -> (11,'Ritwick','Bhowmick',30),
    -> (12,'Priya','Malakar',25);
Query OK, 6 rows affected (0.11 sec)     #Displaying a message that the query is successful
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT *
    -> FROM Person;     #Displaying the entire Person table after inserting records
+----------+-----------+------------+-----+
| PersonID | FirstName | LastName   | age |
+----------+-----------+------------+-----+
|        7 | Priyanshu | Ranjan     |  40 |
|        8 | Aditi     | Goswami    |  36 |
|        9 | Raghav    | Chatterjee |  54 |
|       10 | Ankita    | Das        |  22 |
|       11 | Ritwick   | Bhowmick   |  30 |
|       12 | Priya     | Malakar    |  25 |
+----------+-----------+------------+-----+
6 rows in set (0.01 sec)


Task 4: Insert data to Employee table.
-->
mysql> INSERT INTO Employee     #Inserting 6 records into Employee table
    -> VALUES (1,'Abhay','Sharma',36),
    -> (2,'Gargi','Mallick',24),
    -> (3,'Sayantan','Das',31),
    -> (4,'Rohini','Sen Yadav',39),
    -> (5,'Rohan','Kumar',21),
    -> (6,'Divya','Sen',33);
Query OK, 6 rows affected (0.04 sec)     #Displaying a message that the query is successful
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT *
    -> FROM Employee;     #Displaying the entire Employee table after inserting records
+--------+------------+-----------+-----+
| emp_id | first_name | last_name | age |
+--------+------------+-----------+-----+
|      1 | Abhay      | Sharma    |  36 |
|      2 | Gargi      | Mallick   |  24 |
|      3 | Sayantan   | Das       |  31 |
|      4 | Rohini     | Sen Yadav |  39 |
|      5 | Rohan      | Kumar     |  21 |
|      6 | Divya      | Sen       |  33 |
+--------+------------+-----------+-----+
6 rows in set (0.01 sec)


Task 5: Create Union of two tables.

-->
mysql> SELECT *
    -> FROM Person;     #Displaying the original Person table
+----------+-----------+------------+-----+
| PersonID | FirstName | LastName   | age |
+----------+-----------+------------+-----+
|        7 | Priyanshu | Ranjan     |  40 |
|        8 | Aditi     | Goswami    |  36 |
|        9 | Raghav    | Chatterjee |  54 |
|       10 | Ankita    | Das        |  22 |
|       11 | Ritwick   | Bhowmick   |  30 |
|       12 | Priya     | Malakar    |  25 |
+----------+-----------+------------+-----+
6 rows in set (0.01 sec)

mysql> SELECT *
    -> FROM Employee;     #Displaying the original Employee table
+--------+------------+-----------+-----+
| emp_id | first_name | last_name | age |
+--------+------------+-----------+-----+
|      1 | Abhay      | Sharma    |  36 |
|      2 | Gargi      | Mallick   |  24 |
|      3 | Sayantan   | Das       |  31 |
|      4 | Rohini     | Sen Yadav |  39 |
|      5 | Rohan      | Kumar     |  21 |
|      6 | Divya      | Sen       |  33 |
+--------+------------+-----------+-----+
6 rows in set (0.01 sec)

mysql> SELECT PersonID,FirstName,LastName,age
    -> FROM Person
    -> UNION
    -> SELECT emp_id,first_name,last_name,age
    -> FROM Employee;     #Creating Union of two tables 'Person' and 'Employee'
+----------+-----------+------------+-----+
| PersonID | FirstName | LastName   | age |
+----------+-----------+------------+-----+
|        7 | Priyanshu | Ranjan     |  40 |
|        8 | Aditi     | Goswami    |  36 |
|        9 | Raghav    | Chatterjee |  54 |
|       10 | Ankita    | Das        |  22 |
|       11 | Ritwick   | Bhowmick   |  30 |
|       12 | Priya     | Malakar    |  25 |
|        1 | Abhay     | Sharma     |  36 |
|        2 | Gargi     | Mallick    |  24 |
|        3 | Sayantan  | Das        |  31 |
|        4 | Rohini    | Sen Yadav  |  39 |
|        5 | Rohan     | Kumar      |  21 |
|        6 | Divya     | Sen        |  33 |
+----------+-----------+------------+-----+
12 rows in set (0.01 sec)