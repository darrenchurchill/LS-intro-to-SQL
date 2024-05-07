/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 2: SQL Joins
 * Exercise 4
 *
 * https://launchschool.com/books/sql/read/joins#exercises
 *
 * Write a query to return the first and last name of any singer who released an
 * album in the 80s and who is still living, along with the name(s) of the album
 * that was released, and its release date. Order the results by the singer's
 * age (youngest first).
 */
-- @block
-- @conn encyclopedia
-- @label 80s singers who are still alive
SELECT
  s.first_name "first name",
  s.last_name "last name",
  string_agg(a.album_name, ', ') "80s albums"
FROM
  singers s
  JOIN albums a ON s.id = a.singer_id
WHERE
  date_part('year', a.released) BETWEEN 1980 AND 1989
  AND NOT s.deceased
GROUP BY
  s.first_name,
  s.last_name
;
