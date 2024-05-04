/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 3: More on Select
 * Exercise 4
 *
 * https://launchschool.com/books/sql/read/more_on_select#exercises
 *
 * Write a query to retrieve all the unique values from the `binomial_name`
 * column of the `animals` table.
 */
-- for encyclopedia db
SELECT DISTINCT
  binomial_name
FROM
  animals
;
