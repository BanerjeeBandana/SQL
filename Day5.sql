Lab 1-
Database Schema:
Use the same database scheme created in Previous Lab.
Task: Let's consider a scenario where you want to retrieve information about students from a database table named student and display the results in 
ascending order based on their last names.
Hint: Use orderBy clause in a ascending Order

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
7 rows in set (0.26 sec)

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
6 rows in set (0.01 sec)

mysql> SELECT *
    -> FROM Student
    -> ORDER BY LastName;     #Displaying student information in ascending order based on their last names
+-----------+------------+--------------+-------------+--------+------------------------------+------------+
| StudentID | FirstName  | LastName     | DateOfBirth | Gender | Email                        | Phone      |
+-----------+------------+--------------+-------------+--------+------------------------------+------------+
| S06       | Juin       | Bandopadhyay | 1995-07-20  | Female | juin@gmail.com               | 9064326983 |
| S05       | Priyanka   | Chatterjee   | 2004-09-12  | Female | priyac@gmail.com             | 9320434387 |
| S02       | Dwaipayan  | Majumder     | 2001-10-07  | Male   | majumder.dwaipayan@gmail.com | 2938475610 |
| S04       | Siddharth  | Mukherjee    | 1995-05-17  | Male   | sidmukher@gmail.com          | 7191282028 |
| S03       | Deepshikha | Sanyal       | 2000-12-09  | Female | deepasana@gmail.com          | 9582026531 |
| S01       | Abhira     | Sharma       | 1997-02-15  | Female | abhiras@gmail.com            | 9208629160 |
+-----------+------------+--------------+-------------+--------+------------------------------+------------+
6 rows in set (0.27 sec)


Lab 2-
Database Schema:
Use the same database scheme created in Previous Lab.
Task: Let's consider a scenario where you want to count the number of students based on their gender from a database table named Student.
Hint: use GroupBy clause and Count() function

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
7 rows in set (0.26 sec)

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
6 rows in set (0.01 sec)

mysql> SELECT Gender,COUNT(*) AS NumberOfStudents
    -> FROM Student
    -> GROUP BY Gender;     #Displaying the number of students based on their genders
+--------+------------------+
| Gender | NumberOfStudents |
+--------+------------------+
| Female |                4 |
| Male   |                2 |
+--------+------------------+
2 rows in set (0.09 sec)