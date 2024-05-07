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
-- @label all products and total quantity ordered
SELECT
  t.product_type "type",
  p.product_name "item",
  coalesce(sum(i.quantity), 0) "quantity ordered"
FROM
  order_items i
  RIGHT JOIN products p ON i.product_id = p.id
  JOIN product_types t ON p.product_type_id = t.id
GROUP BY
  "type",
  item
ORDER BY
  "type" ASC,
  item ASC
;
