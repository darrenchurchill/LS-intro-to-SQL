/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 4: Update Data
 * Exercise 9
 *
 * https://launchschool.com/books/sql/read/update_and_delete_data#exercises
 *
 * Add Fries to Aaron Muller's order. Make sure to add the cost ($0.99) to the
 * appropriate field and add 3 loyalty points to the current total.
 */
-- @block
-- @conn ls_burger
-- @label Add Fries to Aaron Muller's order
UPDATE orders
SET
  side = 'Fries',
  side_cost = 0.99,
  customer_loyalty_points = customer_loyalty_points + 3
WHERE
  customer_name = 'Aaron Muller'
;

-- @block
-- @conn ls_burger
-- @label View the change
SELECT
  side,
  side_cost,
  customer_loyalty_points
FROM
  orders
WHERE
  customer_name = 'Aaron Muller'
;
