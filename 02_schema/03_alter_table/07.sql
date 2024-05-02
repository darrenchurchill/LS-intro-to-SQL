/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Schema
 * Chapter 3: Alter a Table
 * Exercise 7
 *
 * https://launchschool.com/books/sql/read/alter_table#exercises
 *
 * Add the following columns to the `orders` table:
 *
 * - a column called `customer_email`; it should hold strings of up to 50
 *   characters
 * - a column called `customer_loyalty_points` that should hold integer values.
 *   if no value is specified for this column, then a value of `0` should be
 *   applied
 */

-- for ls_burger db
ALTER TABLE orders
  ADD COLUMN customer_email varchar(50),
  ADD COLUMN customer_loyalty_points integer DEFAULT 0;

