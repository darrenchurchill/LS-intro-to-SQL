/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Schema
 * Chapter 3: Alter a Table
 * Exercise 3
 *
 * https://launchschool.com/books/sql/read/alter_table#exercises
 *
 * Create a new column in the `celebrities` table called `last_name`. It should
 * be able to hold strings of lengths up to 100 characters. This column should
 * always hold a value.
 */

-- for encyclopedia db
ALTER TABLE celebrities ADD COLUMN last_name varchar(100) NOT NULL;
