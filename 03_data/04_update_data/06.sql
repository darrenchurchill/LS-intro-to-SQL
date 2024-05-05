/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 4: Update Data
 * Exercise 6
 *
 * https://launchschool.com/books/sql/read/update_and_delete_data#exercises
 *
 * Change the name of the `celebrities` table to `singers`, and remove anyone
 * who isn't a singer.
 */
-- @block
-- @conn encyclopedia
-- @label Rename celebrities to singers
ALTER TABLE celebrities
RENAME TO singers
;

-- @block
-- @conn encyclopedia
-- @label Select non-singers
SELECT
  *
FROM
  singers
WHERE
  occupation NOT ILIKE '%singer%'
;

-- @block
-- @conn encyclopedia
-- @label Remove non-singers
DELETE FROM singers
WHERE
  occupation NOT ILIKE '%singer%'
;
