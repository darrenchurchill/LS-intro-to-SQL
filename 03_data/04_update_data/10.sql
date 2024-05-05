/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 4: Update Data
 * Exercise 10
 *
 * https://launchschool.com/books/sql/read/update_and_delete_data#exercises
 *
 * The cost of Fries has increased to $1.20. Update the data in the table to
 * reflect this.
 */
-- @block
-- @conn ls_burger
-- @label Increase Fries cost to $1.20
UPDATE orders
SET
  side_cost = 1.20
WHERE
  side = 'Fries'
;

-- @block
-- @conn ls_burger
-- @label View the change
SELECT
  side,
  side_cost
FROM
  orders
WHERE
  side = 'Fries'
;
