Lab 1:
Database Schema
Use our database Ecommerce to complete the task.
Task: Imagine you are managing an e-commerce platform, and the holiday season is approaching. To capitalize  on the festive spirit and boost sales, 
you decide to organize a special seasonal sale featuring electronics. 
The goal is to offer discounts on electronics and include products with a price less than rs. 70,000 in the promotion.Write a query to find products 
from the "product" table that are either in the 'Electronics' category or have a price less than 70000.
Hint: Use Or operator to retrieve product details.

-->
mysql> DESC Product;     #Describing the Product Table so that we can view its structure
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(50) | NO   |     | NULL    |       |
| category       | varchar(50) | NO   |     | NULL    |       |
| sub_category   | varchar(50) | NO   |     | NULL    |       |
| original_price | varchar(50) | NO   |     | NULL    |       |
| selling_price  | varchar(50) | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.08 sec)

mysql> SELECT *
    -> FROM Product;     #Displaying the entire Product table after inserting records
+------------+-----------------------------------------+-----------------+------------------+----------------+---------------+-------+
| product_id | product_name                            | category        | sub_category     | original_price | selling_price | stock |
+------------+-----------------------------------------+-----------------+------------------+----------------+---------------+-------+
| P01        | HP-C8PL                                 | Laptop          | Electronics      | 44,999.99      | 69,999.87     |   100 |
| P02        | SONY Ultra HD (4K) Smart TV             | Television      | Electronics      | 40,990.58      | 59,900.89     |    40 |
| P03        | boAt Airdopes                           | Headset         | Electronics      | 799.90         | 2,990.29      |   200 |
| P04        | Prestige Omega                          | Cookware        | Utensils         | 1,499.05       | 2,995.28      |    50 |
| P05        | MILTON Helix Pet Water 1000 ml Bottle   | Water Bottle    | Daily Essentials | 99.55          | 135.70        |    25 |
| P06        | boAt Ultima Prism                       | Smartwatch      | Electronics      | 2,299.67       | 8,999.50      |    80 |
| P07        | Cello Pack of 18 Opalware Dazzle Series | Dinnerware      | Utensils         | 999.99         | 2,099.67      |    70 |
| P08        | SAMSUNG Galaxy Tab A8                   | Tablet          | Electronics      | 16,999.25      | 28,799.38     |    20 |
| P09        | REDMI Note 12 Pro 5G                    | Mobile          | Accessories      | 21,999.69      | 27,999.32     |    35 |
| P10        | LG 9 kg with Inverter Washing Machine   | Washing Machine | Home Appliances  | 41,990.556     | 50,990.46     |    60 |
+------------+-----------------------------------------+-----------------+------------------+----------------+---------------+-------+
10 rows in set (0.17 sec)

mysql> SELECT *
    -> FROM Product
    -> WHERE (sub_category='Electronics' OR selling_price<'70,000.00');
+------------+-----------------------------------------+-----------------+------------------+----------------+---------------+-------+
| product_id | product_name                            | category        | sub_category     | original_price | selling_price | stock |
+------------+-----------------------------------------+-----------------+------------------+----------------+---------------+-------+
| P01        | HP-C8PL                                 | Laptop          | Electronics      | 44,999.99      | 69,999.87     |   100 |
| P02        | SONY Ultra HD (4K) Smart TV             | Television      | Electronics      | 40,990.58      | 59,900.89     |    40 |
| P03        | boAt Airdopes                           | Headset         | Electronics      | 799.90         | 2,990.29      |   200 |
| P04        | Prestige Omega                          | Cookware        | Utensils         | 1,499.05       | 2,995.28      |    50 |
| P05        | MILTON Helix Pet Water 1000 ml Bottle   | Water Bottle    | Daily Essentials | 99.55          | 135.70        |    25 |
| P06        | boAt Ultima Prism                       | Smartwatch      | Electronics      | 2,299.67       | 8,999.50      |    80 |
| P07        | Cello Pack of 18 Opalware Dazzle Series | Dinnerware      | Utensils         | 999.99         | 2,099.67      |    70 |
| P08        | SAMSUNG Galaxy Tab A8                   | Tablet          | Electronics      | 16,999.25      | 28,799.38     |    20 |
| P09        | REDMI Note 12 Pro 5G                    | Mobile          | Accessories      | 21,999.69      | 27,999.32     |    35 |
| P10        | LG 9 kg with Inverter Washing Machine   | Washing Machine | Home Appliances  | 41,990.556     | 50,990.46     |    60 |
+------------+-----------------------------------------+-----------------+------------------+----------------+---------------+-------+
10 rows in set (0.06 sec)