/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 4: Update Data
 * Exercise 8
 *
 * https://launchschool.com/books/sql/read/update_and_delete_data#exercises
 *
 * Connect to the `ls_burger` database. Change the drink on James Bergman's
 * order from a Cola to a Lemonade.
 */
-- @block
-- @conn ls_burger
-- @label Change James Bergman's drink
UPDATE orders
SET
  drink = 'Lemonade'
WHERE
  customer_name = 'James Bergman'
;

-- @block
-- @conn ls_burger
-- @label View the change
SELECT
  *
FROM
  orders
WHERE
  customer_name = 'James Bergman'
;
