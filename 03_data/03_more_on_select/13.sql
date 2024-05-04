/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 3: More on Select
 * Exercise 13
 *
 * https://launchschool.com/books/sql/read/more_on_select#exercises
 *
 * Write a query that returns the cost of the cheapest side ordered.
 */
-- for ls_burger db
SELECT
  min(side_cost)
FROM
  orders
;
