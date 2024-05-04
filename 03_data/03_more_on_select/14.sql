/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 3: More on Select
 * Exercise 14
 *
 * https://launchschool.com/books/sql/read/more_on_select#exercises
 *
 * Write a query that returns the number of orders that include Fries and the
 * number of orders that include Onion Rings.
 */
-- for ls_burger db
SELECT
  side,
  count(*)
FROM
  orders
WHERE
  side = 'Fries'
  OR side = 'Onion Rings'
GROUP BY
  side
;
