/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 2: SQL Joins
 * Exercise 11
 *
 * https://launchschool.com/books/sql/read/joins#exercises
 *
 * Write a query to return the name of every product included in an order
 * alongside the number of times it has been ordered. Sort the results by
 * product name, ascending.
 */
-- @block
-- @conn ls_burger
-- @label product names and total quantity ordered
SELECT
  p.product_name "item",
  sum(i.quantity) "quantity ordered"
FROM
  order_items i
  JOIN products p ON i.product_id = p.id
GROUP BY
  item
ORDER BY
  item ASC
;
