/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 3: More on Select
 * Exercise 3
 *
 * https://launchschool.com/books/sql/read/more_on_select#exercises
 *
 * Write a query to retrieve the name of the country with the second largest
 * population.
 */
-- for encyclopedia db
SELECT
  name
FROM
  countries
ORDER BY
  population DESC
LIMIT
  1
OFFSET
  1
;
