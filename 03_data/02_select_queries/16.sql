/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 2: Select Queries
 * Exercise 16
 *
 * https://launchschool.com/books/sql/read/select_queries#exercises
 *
 * Write a query that returns the customer name from any order which does not
 * include a drink item.
 */
-- for ls_burger db
SELECT
  customer_name
FROM
  orders
WHERE
  drink IS NULL
;
