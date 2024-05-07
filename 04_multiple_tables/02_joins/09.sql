/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 2: SQL Joins
 * Exercise 9
 *
 * https://launchschool.com/books/sql/read/joins#exercises
 *
 * Build on the query from Exercise 8, returning the name of any customer who
 * ordered fries.  Return this in a column called "Customers who like Fries".
 * Don't repeat the same customer name more than once in the results.
 */
-- @block
-- @conn ls_burger
-- @label Customers who like Fries
SELECT DISTINCT
  c.customer_name "Customers who like Fries"
FROM
  orders o
  JOIN order_items i ON o.id = i.order_id
  JOIN products p ON i.product_id = p.id
  JOIN customers c ON o.customer_id = c.id
WHERE
  p.product_name = 'Fries'
;
