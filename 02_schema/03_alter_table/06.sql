/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Schema
 * Chapter 3: Alter a Table
 * Exercise 6
 *
 * https://launchschool.com/books/sql/read/alter_table#exercises
 *
 * Change the `animals` table so that the `binomial_name` column cannot contain
 * duplicate values.
 */

-- for encyclopedia db
ALTER TABLE animals ADD CONSTRAINT unique_binomial_name UNIQUE (binomial_name);
