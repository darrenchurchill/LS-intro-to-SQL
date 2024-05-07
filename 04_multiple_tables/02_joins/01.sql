/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 2: SQL Joins
 * Exercise 1
 *
 * https://launchschool.com/books/sql/read/joins#exercises
 *
 * Connect to the `encyclopedia` database. Write a query to return country names
 * and their corresponding continent.
 */
-- @block
-- @conn encyclopedia
-- @label countries join continents
SELECT
  c.name,
  cont.continent_name
FROM
  countries c
  JOIN continents cont ON c.continent_id = cont.id
;
