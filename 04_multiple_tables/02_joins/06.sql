/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 2: SQL Joins
 * Exercise 6
 *
 * https://launchschool.com/books/sql/read/joins#exercises
 *
 * Rewrite the query from Exercise 5 as a sub-query instead of a JOIN.
 */
-- @block
-- @conn encyclopedia
-- @label singers w/o album in albums table
SELECT
  first_name "first name",
  last_name "last name"
FROM
  singers
WHERE
  id NOT IN (
    SELECT
      singer_id
    FROM
      albums
  )
;
