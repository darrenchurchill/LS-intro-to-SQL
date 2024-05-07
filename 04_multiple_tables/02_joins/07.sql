/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 2: SQL Joins
 * Exercise 7
 *
 * https://launchschool.com/books/sql/read/joins#exercises
 *
 * Connect to the ls_burger database. Return a list of all orders and their
 * associated product items.
 */
-- @block
-- @conn ls_burger
-- @label all orders and products
SELECT
  o.id "order id",
  c.customer_name customer,
  s.status "order status",
  p.product_name "item",
  i.quantity
FROM
  orders o
  JOIN order_items i ON o.id = i.order_id
  JOIN products p ON i.product_id = p.id
  JOIN order_statuses s ON o.order_status_id = s.id
  JOIN customers c ON o.customer_id = c.id
;
