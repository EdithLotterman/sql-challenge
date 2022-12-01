# Pewlett Hackard Research Project - Employee Data 1980s and 1990s

This project is an analysis of the employees of the Pewlett Hackard company from
the 1980s to 1990. Fragmentary data reamined in 6 csv files. These files were
examined and then structured into 6 Postgress tables, data imported, and an analysis
was performed

## Data Modeling
Data was modeled as per the included imaged labeled ERD.png. All columns in files was 
included. The data was already in first normal form, and primary keys and relationships 
were added to move to the second normal form.

## Schema Creation
The tables were created in Postgress using the included schema.sql using according to the
previously established data modeling. All data loaded sucessfully. Data was clean and required 
no scruning prior to loading.

## Data Analysis
The following queries were performed on the data per request:

	1. List the employee number, last name, first name, sex, and salary of each employee.
	2. List the first name, last name, and hire date for the employees who were hired in 1986.
	3. List the manager of each department along with their department number, department name, 
	employee number, last name, and first name.
	4. List the department number for each employee along with that employee’s employee number, 
	last name, first name, and department name.
	5.List first name, last name, and sex of each employee whose first name is Hercules and 
	whose last name begins with the letter B.
	6. List each employee in the Sales department, including their employee number, last name, and first name.
	7. List each employee in the Sales and Development departments, including their employee number, last name, 
	first name, and department name.
	8. List the frequency counts, in descending order, of all the employee last names (that is, how many 
	employees share each last name).

The queries are saved as data analysis.sql.
