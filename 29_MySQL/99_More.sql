-- Make Database Read Only
ALTER DATABASE myDB READ ONLY = 1;

-- List all databases
SHOW DATABASES;

-- List all tables
SHOW TABLES;

-- Clear Screen
system clear

-- How to run app.sql file
$ cd path/to/your/file.sql
$ mysql -u admin -p
source app.sql
