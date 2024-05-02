/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 2: Select Queries
 * Exercise 15
 *
 * https://launchschool.com/books/sql/read/select_queries#exercises
 *
 * Write a query that returns all the burgers ordered by Natasha O'Shea.
 */
-- for ls_burger db
SELECT
  burger
FROM
  orders
WHERE
  customer_name ILIKE '%Natasha O''Shea%'
;
