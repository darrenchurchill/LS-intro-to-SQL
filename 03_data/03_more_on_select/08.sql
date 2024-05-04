/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 3: More on Select
 * Exercise 8
 *
 * https://launchschool.com/books/sql/read/more_on_select#exercises
 *
 * Write a query to return the average maximum weight from the `animals`
 * table.
 */
-- for encyclopedia db
SELECT
  avg(max_weight_kg)
FROM
  animals
;
