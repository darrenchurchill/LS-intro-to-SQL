/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 2: SQL Joins
 * Exercise 8
 *
 * https://launchschool.com/books/sql/read/joins#exercises
 *
 * Return the id of any order that includes Fries.
 */
-- @block
-- @conn ls_burger
-- @label orders with Fries
SELECT
  o.id "order id"
FROM
  orders o
  JOIN order_items i ON o.id = i.order_id
  JOIN products p ON i.product_id = p.id
WHERE
  p.product_name = 'Fries'
;
