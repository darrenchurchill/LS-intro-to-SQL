/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Schema
 * Chapter 3: Alter a Table
 * Exercise 8
 *
 * https://launchschool.com/books/sql/read/alter_table#exercises
 *
 * Add three columns to the `orders` table called `burger_cost`, `side_cost`,
 * and `drink_cost` to hold monetary values in dollars and cents (assume that
 * all values will be less than $100). If no value is entered for these columns,
 * a value of `0` dollars should be used.
 */

-- for ls_burger db
ALTER TABLE orders
  ADD COLUMN burger_cost decimal(4, 2) DEFAULT 0,
  ADD COLUMN side_cost decimal(4, 2) DEFAULT 0,
  ADD COLUMN drink_cost decimal(4, 2) DEFAULT 0;
