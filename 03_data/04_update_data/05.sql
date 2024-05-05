/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 4: Update Data
 * Exercise 5
 *
 * https://launchschool.com/books/sql/read/update_and_delete_data#exercises
 *
 * Remove Tom Cruise from the `celebrities` table.
 */
-- @block
-- @conn encyclopedia
-- @label Remove Tom Cruise
DELETE FROM celebrities
WHERE
  first_name = 'Tom'
  AND last_name = 'Cruise'
;
