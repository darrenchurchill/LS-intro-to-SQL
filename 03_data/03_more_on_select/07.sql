/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 3: More on Select
 * Exercise 7
 *
 * https://launchschool.com/books/sql/read/more_on_select#exercises
 *
 * Write a query to return the highest maximum age from the `animals` table.
 */
-- for encyclopedia db
SELECT
  max(max_age_years)
FROM
  animals
;
