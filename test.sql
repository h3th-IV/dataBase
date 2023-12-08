SELECT column1, column2 FROM test_table WHERE condition;

-- UPDATE: Modifies existing records in a table.
UPDATE test_table SET column1 = value1 WHERE condition;

-- DELETE: Removes records from a table.
DELETE FROM test_table WHERE condition;

-- DROP: Deletes a database, table, or index.
-- danger: DROP permanently deletes the specified object.
DROP TABLE test_table;

-- INSERT INTO: Adds new records to a table.
INSERT INTO test_table (column1, column2) VALUES (value1, value2);

-- CREATE DATABASE: Creates a new database.
CREATE DATABASE tst_database;

-- ALTER TABLE: Modifies the structure of an existing table.
ALTER TABLE test_table ADD COLUMN new_column datatype;

-- AFTER: Specifies the position of a new column in a table.
ALTER TABLE test_table ADD COLUMN new_column datatype AFTER existing_column;

-- SQL Statements
-- DISTINCT: Retrieves unique values from a column.
SELECT DISTINCT column FROM test_table;

-- COUNT: Counts the number of rows or non-null values.
SELECT COUNT(*) FROM test_table;

-- WHERE Clause: Filters data based on a specified condition.
SELECT * FROM test_table WHERE column = value;

-- Operators: Used with the WHERE clause for comparisons.
-- Example: >, <, =, !=, BETWEEN, LIKE, IN, etc.

-- ORDER BY: Sorts the result set.
SELECT column1, column2 FROM test_table ORDER BY column1 ASC;

-- AND, OR: Combines conditions in a WHERE clause.
SELECT * FROM test_table WHERE condition1 AND condition2;

-- NOT: Negates a condition.
SELECT * FROM test_table WHERE NOT condition;

-- NOT LIKE: Negates a pattern match.
SELECT * FROM test_table WHERE column NOT LIKE 'test_pattern';

-- NOT BETWEEN: Negates a range condition.
SELECT * FROM test_table WHERE column NOT BETWEEN value1 AND value2;

-- NOT IN: Negates a list of values.
SELECT * FROM test_table WHERE column NOT IN (value1, value2, value3);

-- Other SQL Concepts
-- INSERT INTO Statement: Adds new records to a table.
INSERT INTO test_table (column1, column2) VALUES (value1, value2);

-- NULL Values: Represents missing or undefined data.
SELECT * FROM test_table WHERE column IS NULL;

-- UPDATE Statement: Modifies existing records in a table.
UPDATE test_table SET column1 = value1 WHERE condition;

-- DELETE Statement: Removes records from a table.
DELETE FROM test_table WHERE condition;

-- SUM Function: Calculates the sum of values in a column.
SELECT SUM(column) FROM test_table;

-- AVG Function: Calculates the average of values in a column.
SELECT AVG(column) FROM test_table;

-- LIKE Operator: Searches for a specified pattern in a column.
SELECT * FROM test_table WHERE column LIKE 'pattern%';

-- Wildcards: Used with the LIKE operator for pattern matching.
-- Example: % (matches any sequence of characters), _ (matches any single character).

-- IN Operator: Tests whether a value matches any value in a list.
SELECT * FROM test_table WHERE column IN (value1, value2, value3);

-- Aliases: Provides a temporary name for a table or column.
SELECT column1 AS alias1, column2 AS alias2 FROM your_table;

-- JOIN: Combines rows from two or more tables based on a related column.
SELECT * FROM table1 JOIN table2 ON table1.column = table2.column;

-- Stored Procedure: A stored collection of one or more SQL statements that can be reused.
-- Example:
CREATE PROCEDURE my_new_Procedure
AS
SELECT * FROM test_table
GO;

