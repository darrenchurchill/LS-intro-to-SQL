/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 2: Select Queries
 * Exercise 18
 *
 * https://launchschool.com/books/sql/read/select_queries#exercises
 *
 * Write a query that returns the three meal items for any order that includes
 * both a side and a drink.
 */
-- for ls_burger db
SELECT
  burger,
  side,
  drink
FROM
  orders
WHERE
  side IS NOT NULL
  AND drink IS NOT NULL
;
