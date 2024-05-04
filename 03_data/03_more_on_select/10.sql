/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 3: More on Select
 * Exercise 10
 *
 * https://launchschool.com/books/sql/read/more_on_select#exercises
 *
 * Write a query to return the total population of all the countries in the
 * `countries` table.
 */
-- for encyclopedia db
SELECT
  sum(population)
FROM
  countries
;
