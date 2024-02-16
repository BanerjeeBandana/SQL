Lab 1: Database Schema:
Consider a simple database with one tables: BankAccount
BankAccount Table:
● Columns: account_id (Primary Key), account_holder_name,
account_balance

-->
mysql> CREATE TABLE BankAccount     #Creating a table whose name is BankAccount
    -> (
    -> account_id VARCHAR(20) PRIMARY KEY,     #Defining account_id as Primary Key
    -> account_holder_name VARCHAR(50) NOT NULL,     #Specifying account_holder_name as a non-null column
    -> account_balance VARCHAR(50) NOT NULL     #Specifying account_balance as a non-null column
    -> );
Query OK, 0 rows affected (0.07 sec)     #Displaying a message that the query is successful

mysql> DESC BankAccount;     #Describing the BankAccount Table so that we can view its structure
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| account_id          | varchar(20) | NO   | PRI | NULL    |       |
| account_holder_name | varchar(50) | NO   |     | NULL    |       |
| account_balance     | varchar(50) | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.06 sec)


Task 1: Insert Data
Write an SQL INSERT statement to insert data into the BankAccount table.

-->
mysql> INSERT INTO BankAccount     #Inserting 5 records into BankAccount table
    -> VALUES('A01','Abhishek Ganguly','30,000.75'),
    -> ('A02','Supriya Roy','26,997.05'),
    -> ('A03','Puja Bansal','49005.59'),
    -> ('A04','Amit Kumar','55000.95'),
    -> ('A05','Bisakha Chatterjee','25550.87');
Query OK, 5 rows affected (0.01 sec)     #Displaying a message that the query is successful
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT *
    -> FROM BankAccount;     #Displaying the entire BankAccount table after inserting records
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| A01        | Abhishek Ganguly    | 30,000.75       |
| A02        | Supriya Roy         | 26,997.05       |
| A03        | Puja Bansal         | 49005.59        |
| A04        | Amit Kumar          | 55000.95        |
| A05        | Bisakha Chatterjee  | 25550.87        |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)


Task 2: Retrieving Data
Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders 
from the BankAccount table.

-->
mysql> SELECT account_holder_name,account_balance
    -> FROM BankAccount;     #Displaying table according to given conditions
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Abhishek Ganguly    | 30,000.75       |
| Supriya Roy         | 26,997.05       |
| Puja Bansal         | 49005.59        |
| Amit Kumar          | 55000.95        |
| Bisakha Chatterjee  | 25550.87        |
+---------------------+-----------------+
5 rows in set (0.01 sec)


Task 3: Filtering Data
Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the 
account_balance is more than 30,000.

-->
mysql> SELECT account_holder_name,account_balance
    -> FROM BankAccount
    -> WHERE account_balance>'30,000';     #Displaying table according to given conditions
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Abhishek Ganguly    | 30,000.75       |
| Puja Bansal         | 49005.59        |
| Amit Kumar          | 55000.95        |
+---------------------+-----------------+
3 rows in set (0.01 sec)


Task 4: Updating Data
Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.

-->
mysql> INSERT INTO BankAccount VALUES('101','Amritendu Roy','29,001.98');
Query OK, 1 row affected (0.01 sec)     #Displaying a message that the query is successful

mysql> UPDATE BankAccount
    -> SET account_balance='75,150.55'
    -> WHERE account_id='101';     #Updating table according to given condition
Query OK, 1 row affected (0.01 sec)     #Displaying a message that the query is successful
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT *
    -> FROM BankAccount;     #Displaying the entire BankAccount table after updating record
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Amritendu Roy       | 75,150.55       |
| A01        | Abhishek Ganguly    | 30,000.75       |
| A02        | Supriya Roy         | 26,997.05       |
| A03        | Puja Bansal         | 49005.59        |
| A04        | Amit Kumar          | 55000.95        |
| A05        | Bisakha Chatterjee  | 25550.87        |
+------------+---------------------+-----------------+
6 rows in set (0.01 sec)