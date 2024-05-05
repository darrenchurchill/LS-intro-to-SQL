/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 4: Update Data
 * Exercise 4
 *
 * https://launchschool.com/books/sql/read/update_and_delete_data#exercises
 *
 * In the `celebrities` table, update the Elvis row so that the value in the
 * `deceased` column is true. Then change the column so that it no longer allows
 * `NULL` values.
 */
-- @block
-- @conn encyclopedia
-- @label Update celebrities
-- @label Set Elvis to "deceased"
UPDATE celebrities
SET
  deceased = TRUE
WHERE
  first_name = 'Elvis'
  AND last_name = 'Presley'
;

-- @label "deceased" not null
ALTER TABLE celebrities
ALTER COLUMN deceased
SET NOT NULL
;
