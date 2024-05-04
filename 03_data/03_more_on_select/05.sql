/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 3: More on Select
 * Exercise 5
 *
 * https://launchschool.com/books/sql/read/more_on_select#exercises
 *
 * Write a query to return the longest `binomial_name` from the `animals`
 * table.
 */
-- for encyclopedia db
SELECT
  binomial_name
FROM
  animals
ORDER BY
  length(binomial_name) DESC
LIMIT
  1
;
