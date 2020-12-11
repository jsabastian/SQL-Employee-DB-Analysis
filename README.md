# SQL - Employee Database: A Mystery in Two Parts

![sql_to_pandas.jpeg](sql_to_pandas.jpeg)

## Database

Company employees from the 1980s and 1990s (six CSV files).

#### Data Modeling

Inspected the csv files and sketched out an ERD of the tables. (http://www.quickdatabasediagrams.com).

#### Data Engineering

Created a table schema for each of the six CSV files, specifying data types, primary keys, foreign keys, and other constraints.

Created a composite key, taking to primary keys in order to uniquely identify a row.

Created tables in the correct order to handle foreign keys.

Imported each CSV file into the corresponding SQL table. 

Imported the data in the same order that the tables were created, accounting for the headers when importing to avoid errors.

#### Data Analysis

With a complete database, performed the following:

1. Listed the following details of each employee: employee number, last name, first name, sex, and salary.

2. Listed first name, last name, and hire date for employees who were hired in 1986.

3. Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. Listed the department of each employee with the following information: employee number, last name, first name, and department name.

5. Listed first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. Listed all employees in the Sales department, including their employee number, last name, first name, and department name.

7. Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

9. Imported the SQL database into Pandas. 

10. Created a histogram to visualize the most common salary ranges for employees.

11. Created a bar chart of average salary by title.


## Files included in the repo

- image file of the ERD.

- `.sql` file of your table schemata.

- `.sql` file of your queries.
