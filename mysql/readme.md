Here are 15 useful MySQL commands in plaintext markdown:

## 1. Login to MySQL server
```bash
mysql -u username -p
```
Login to MySQL server.

## 2. Create a new database
```bash
CREATE DATABASE database_name;
```
Creates a new database.

## 3. Show all databases on the server
```bash
SHOW DATABASES;
```
Shows all databases on the server.

## 4. Select a database
```bash
USE database_name;
```
Selects a database.

## 5. Drop a database
```bash
DROP DATABASE database_name;
```
Drops a database.

## 6. Show all tables in the selected database
```bash 
SHOW TABLES; 
```
Shows all tables in the selected database.

## 7. Create a new table in a database with the specified column name and datatype
 ```bash 
CREATE TABLE table_name (
  column1 datatype,
  column2 datatype,
  column3 datatype,
); 
```
Creates a new table in a database with the specified column name and datatype.

## 8. Display the table structure
 ```bash 
DESCRIBE table_name; 
 ```
Displays the table structure.

## 9. Drop a table
 ```bash 
DROP TABLE table_name; 
 ```
Drops a table.

## 10. Add a column to a table
 ```bash 
ALTER TABLE table_name ADD column_name datatype; 
 ```
Adds a column to a table.

## 11. Select and retrieve values from all columns in a table
 ```bash 
SELECT * FROM table_name; 
 ```
Selects and retrieves values from all columns in a table.

## 12. Create an index for a table
 ```bash 
CREATE INDEX index_name ON table_name (column1, column2, ...); 
 ```
Creates an index for a table.

## 13. Delete an index from a table
 ```bash 
ALTER TABLE table_name DROP INDEX index_name; 
 ```
Deletes an index from a table.

## 14. Create a view (virtual table) with the specified content
 ```bash 
CREATE VIEW view_name AS SELECT column1, column2, ... FROM table_name WHERE condition; 
 ```
Creates a view (virtual table) with the specified content.

## 15. Delete a view
```bash 
DROP VIEW view_name; 
```
Deletes a view.
