# SQL Module

This repository documents my journey through the Data Analyst Bootcamp, specifically focusing on SQL. Below is a structured overview of the topics covered, categorized by proficiency level.

## Beginner Level

1. **SELECT Statements**   - Utilized the `SELECT` command to retrieve specific data from one or more tables.
2. **WHERE Clause**   - Applied the `WHERE` clause to filter records based on specified conditions, enabling targeted data retrieval.
3. **LIKE Operator**   - Employed the `LIKE` operator with wildcards (`%` and `_`) to search for patterns within column data.
4. **ORDER BY Clause**  - Used the `ORDER BY` clause to sort query results in ascending or descending order based on specified columns.
5. **GROUP BY Clause**   - Implemented the `GROUP BY` clause to aggregate data based on one or more columns, often in conjunction with aggregate functions like `SUM`, `COUNT`, `AVG`, `MIN`, and `MAX`.
6. **HAVING Clause**   - Utilized the `HAVING` clause to filter groups of data after aggregation, complementing the `GROUP BY` clause.
7. **LIMIT Clause**   - Applied the `LIMIT` clause to restrict the number of rows returned by a query, enhancing performance and focus.
8. **Aliasing**   - Assigned temporary names to columns or tables using aliases to improve query readability and maintainability.

## Intermediate Level
1. **JOINs**- Combined rows from multiple tables based on related columns using various types of joins:
  A. **INNER JOIN:** Selected records with matching values in both tables.
  B. **LEFT JOIN (LEFT OUTER JOIN):** Retrieved all records from the left table and the matched records from the right table; returned `NULL` for non-matching rows from the right table.
  C. **RIGHT JOIN (RIGHT OUTER JOIN):** Fetched all records from the right table and the matched records from the left table; returned `NULL` for non-matching rows from the left table.
  D. **FULL JOIN (FULL OUTER JOIN):** Selected all records when there was a match in either the left or right table; returned `NULL` for non-matching rows from both tables.

2. **UNION and UNION ALL** - Merged the result sets of two or more `SELECT` statements into a single result set:
     - **UNION:** Combined result sets and removed duplicate rows.
     - **UNION ALL:** Combined result sets and included all duplicates.

3. **String Functions**
   - Manipulated text data using functions such as:
     - **LENGTH():** Returned the number of characters in a string.
     - **UPPER():** Converted a string to uppercase.
     - **LOWER():** Converted a string to lowercase.
     - **TRIM():** Removed leading and trailing spaces from a string.
     - **LEFT() and RIGHT():** Extracted a specified number of characters from the left or right side of a string.
     - **SUBSTRING():** Extracted a substring from a string starting at a specified position.
     - **REPLACE():** Replaced occurrences of a specified substring within a string.
     - **LOCATE():** Found the position of a substring within a string.
     - **CONCAT():** Concatenated two or more strings into one.

4. **CASE Statements** - Implemented conditional logic within SQL queries to return specific values based on defined conditions.

5. **Subqueries**- Nested queries within other queries to perform complex data retrieval and manipulation tasks.

6. **Window Functions**
   - Performed calculations across a set of table rows related to the current row, such as:
     - **ROW_NUMBER():** Assigned a unique sequential integer to rows within a partition.
     - **RANK():** Assigned a rank to rows within a partition, allowing for gaps in ranking for ties.
     - **DENSE_RANK():** Assigned a rank to rows within a partition without gaps in ranking for ties.
     - **SUM() OVER():** Calculated a rolling sum over a specified range of rows.

## Advanced Level

1. **Common Table Expressions (CTEs)** - Defined temporary result sets using the `WITH` clause to improve query readability and enable recursive queries.

2. **Temporary Tables** - Created temporary tables that existed only within the duration of a session to store intermediate results for complex operations.

3. **Stored Procedures**- Wrote and stored complex SQL statements and logic on the database server for reuse, allowing for parameterization and control-flow logic to automate tasks and enhance performance.

4. **Triggers**- Defined automatic actions to be executed in response to specific events on a table, such as `INSERT`, `UPDATE`, or `DELETE` operations, to enforce business rules and maintain data integrity.

5. **Events**- Scheduled and automated tasks to run at specified times or intervals using the MySQL Event Scheduler, facilitating routine maintenance and data management operations.



### For detailed code examples and further insights, please refer to the individual files corresponding to each topic.
 

