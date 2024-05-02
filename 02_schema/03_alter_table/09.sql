/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Schema
 * Chapter 3: Alter a Table
 * Exercise 9
 *
 * https://launchschool.com/books/sql/read/alter_table#exercises
 *
 * Remove the `order_total` column from the `orders` table.
 */

-- for ls_burger db
ALTER TABLE orders DROP COLUMN order_total;
