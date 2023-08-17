# sql-challenge
Module 9 Challenge

In this challenge I started by opening up the different CSV files and getting an understanding of how the data looks.

To do this I noted what each of the columns are, what their data type is, and if they have unique values or not.

departments
-
dept_no int UNIQUE
dept_name string UNIQUE

dept_emp (1 employee can have multiple departments)
-
emp_no int NOT UNIQUE
dept_no string NOT UNIQUE

dept_manager (1 department can have multiple managers)
----
dept_no string FK NOT UNIQUE
emp_no FK int UNIQUE

employees
-
emp_no PK int UNIQUE
emp_title FK string
birth_date date
first_name string
last_name string
sex string
hire_date date

salaries
-
emp_no int PK UNIQUE
salary int

titles
-
title_id string PK UNIQUE
title string UNIQUE

From this point, I was able to start using the quick database online program to start buidling out the schamtic and visualizing how this data connects to each other.

Once this was complete, I was able to create by tables in postgres SQL and import the CSV data into them. From their I was able to create different queries to answer the questions in this module.