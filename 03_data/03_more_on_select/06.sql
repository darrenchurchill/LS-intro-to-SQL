/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 3: More on Select
 * Exercise 6
 *
 * https://launchschool.com/books/sql/read/more_on_select#exercises
 *
 * Write a query to return the first name of any celebrity born in 1958.
 */
-- for encyclopedia db
SELECT
  first_name
FROM
  celebrities
WHERE
  date_part('year', date_of_birth) = 1958
;
