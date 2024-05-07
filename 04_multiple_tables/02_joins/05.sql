/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 2: SQL Joins
 * Exercise 5
 *
 * https://launchschool.com/books/sql/read/joins#exercises
 *
 * Write a query to return the first and last name of any singer without an
 * associated album entry.
 */
-- @block
-- @conn encyclopedia
-- @label singers w/o album in albums table
SELECT
  s.first_name "first name",
  s.last_name "last name"
FROM
  singers s
  LEFT JOIN albums a ON s.id = a.singer_id
WHERE
  a.id IS NULL
;
