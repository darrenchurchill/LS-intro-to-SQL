/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Schema
 * Chapter 3: Alter a Table
 * Exercise 4
 *
 * https://launchschool.com/books/sql/read/alter_table#exercises
 *
 * Change the `celebrities` table so that the `date_of_birth` column uses a data
 * type that holds an actual date value rather than a string. Also ensure that
 * this column must hold a value.
 */

-- for encyclopedia db
ALTER TABLE celebrities
  ALTER COLUMN date_of_birth
    TYPE date
    USING date_of_birth::date,

  ALTER COLUMN date_of_birth SET NOT NULL;
