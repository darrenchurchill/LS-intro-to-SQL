/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 2: SQL Joins
 * Exercise 3
 *
 * https://launchschool.com/books/sql/read/joins#exercises
 *
 * Write a query to return the first names of any singer who had an album
 * released under the Warner Bros label.
 */
-- @block
-- @conn encyclopedia
-- @label Warner Bros singers
SELECT
  s.first_name artist,
  string_agg(a.album_name, ', ') "Warner Bros albums"
FROM
  singers s
  JOIN albums a ON s.id = a.singer_id
WHERE
  a.label LIKE '%Warner Bros%'
GROUP BY
  s.first_name
;
