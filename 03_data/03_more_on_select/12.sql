/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 3: More on Select
 * Exercise 12
 *
 * https://launchschool.com/books/sql/read/more_on_select#exercises
 *
 * Connect to the `ls_burger` database. Write a query that returns the average
 * burger cost for all orders that include fries.
 */
-- for ls_burger db
SELECT
  avg(burger_cost)
FROM
  orders
WHERE
  side = 'Fries'
;
