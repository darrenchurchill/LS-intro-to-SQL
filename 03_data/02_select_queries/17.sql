/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 2: Select Queries
 * Exercise 17
 *
 * https://launchschool.com/books/sql/read/select_queries#exercises
 *
 * Write a query that returns the three meal items for any order which does not
 * include fries.
 */
-- for ls_burger db
SELECT
  burger,
  side,
  drink
FROM
  orders
WHERE
  side NOT ILIKE '%fries%'
  OR side IS NULL
;
