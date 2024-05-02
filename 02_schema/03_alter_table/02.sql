/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Schema
 * Chapter 3: Alter a Table
 * Exercise 2
 *
 * https://launchschool.com/books/sql/read/alter_table#exercises
 *
 * Change the name of the `name` column in the `celebrities` table to
 * `first_name`, and change its data type to `varchar(80)`.
 */

-- for encyclopedia db
ALTER TABLE celebrities RENAME COLUMN name TO first_name;
ALTER TABLE celebrities ALTER COLUMN first_name TYPE varchar(80);
