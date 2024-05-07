/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 2: SQL Joins
 * Exercise 2
 *
 * https://launchschool.com/books/sql/read/joins#exercises
 *
 * Write a query to return names and capitals of European countries.
 */
-- @block
-- @conn encyclopedia
-- @label European countries and capitals
SELECT
  c.name country,
  c.capital
FROM
  countries c
  JOIN continents cont ON c.continent_id = cont.id
WHERE
  cont.continent_name = 'Europe'
;
