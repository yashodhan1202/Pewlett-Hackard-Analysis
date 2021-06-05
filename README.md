# Pewlett-Hackard-Analysis

# Overview 

The purpose of our project is to determine the number of retiring employees by title and identify which employees are eligible to to participate in the mentorship program help Bobby prepare a written analysis on the results.

# Resources #
- PostgreSQL 11
- PG Admin 4
- Employee data CSV's provided for Pewlett Hackard

# Methodology #

We were asked to find out the number of employees by their titles. The two tables which had the common info were the "employees" and "titles" tables. The condition to satisfy was that the data to be pulled was for employees who were born between the year 1952 and 1955. Challenge faced was of the duplicate entries for employees who either changed the domain or were promoted over the years. A separate table was created to identify the latest title for a particular employee using the "DISTINCT" syntax in the queries written. 

The next task was to find out the count of the titles of the employees who were retiring. Here we used the data from the new table created for identifying the unique titles. The output is as follows :- 


The last task was to find out the employees who are eligible for the mentorship for current employees born between January 1, 1965 and December 31st, 1965. We used the data from three tables employees, dept_employees and titles. Again we used the "DISTINCT" syntax to remove the duplicate entries of employees. The output is as follows :- 



# Results #


