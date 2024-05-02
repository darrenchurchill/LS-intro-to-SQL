/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 2: Select Queries
 * Exercise 13
 *
 * https://launchschool.com/books/sql/read/select_queries#exercises
 *
 * Connect to the `ls_burger` database. Write a query that lists all of the
 * burgers that have been ordered, form cheapest to most expensive, where the
 * cost of the burger is less than $5.00.
 */

-- for ls_burger db
SELECT
  burger
FROM
  orders
WHERE
  burger_cost < 5.00
ORDER BY
  burger_cost
;
