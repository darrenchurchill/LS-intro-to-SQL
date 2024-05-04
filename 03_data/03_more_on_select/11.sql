/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 3: More on Select
 * Exercise 11
 *
 * https://launchschool.com/books/sql/read/more_on_select#exercises
 *
 * Write a query to return each unique conservation status code alongside the
 * number of animals that have that code.
 */
-- for encyclopedia db
SELECT
  conservation_status,
  count(conservation_status)
FROM
  animals
GROUP BY
  conservation_status
;
