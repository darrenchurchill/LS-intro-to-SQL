/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 2: SQL Joins
 * Exercise 10
 *
 * https://launchschool.com/books/sql/read/joins#exercises
 *
 * Write a query to return the total cost of all Natasha O'Shea's orders.
 */
-- @block
-- @conn ls_burger
-- @label Natasha O'Shea's total orders cost
SELECT
  c.customer_name,
  sum(i.quantity * p.product_cost) "customer order(s) total"
FROM
  orders o
  JOIN order_items i ON o.id = i.order_id
  JOIN products p ON i.product_id = p.id
  JOIN customers c ON o.customer_id = c.id
WHERE
  c.customer_name = 'Natasha O''Shea'
GROUP BY
  c.customer_name
;
