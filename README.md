# Employee Database Analysis

# Introduction:
As a new data engineer at Pewlett Hackard, your first major task is to conduct a research project on employees hired during the 1980s and 1990s. This project involves designing tables to hold data from six CSV files, importing the files into a SQL database, and then performing data analysis on the dataset.

# Instructions:
This is divided into three parts: data modeling, data engineering, and data analysis.

# Data Modeling:
Inspect the CSV files and sketch an Entity Relationship Diagram (ERD) to visualize the tables' relationships. Use tools like QuickDBD for creating the sketch.

# Data Engineering:
Create a table schema for each of the six CSV files, specifying data types, primary keys, foreign keys, and other constraints.
Ensure primary keys are unique or create composite keys if necessary.
Create tables in the correct order to handle foreign keys and import each CSV file into its corresponding SQL table.

# Data Analysis:
Perform various queries on the database to answer specific questions about the employee dataset:
- List employee number, last name, first name, sex, and salary of each employee.
- List first name, last name, and hire date for employees hired in 1986.
- List manager of each department along with department number, department name, employee number, last name, and first name.
- List department number for each employee along with employee number, last name, first name, and department name.
- List first name, last name, and sex of employees named Hercules whose last name begins with the letter B.
- List each employee in the Sales department with their employee number, last name, and first name.
- List each employee in the Sales and Development departments with their employee number, last name, first name, and department name.
- List frequency counts, in descending order, of all employee last names to determine how many employees share each last name.

# Conclusion:
Summarize key findings and insights from the data analysis, highlighting any notable trends or patterns observed.
