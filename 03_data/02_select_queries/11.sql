/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 2: Select Queries
 * Exercise 11
 *
 * https://launchschool.com/books/sql/read/select_queries#exercises
 *
 * Write a query that will return the first name and last name of all the
 * celebrities who act.
 */

-- for encyclopedia db
SELECT first_name, last_name FROM celebrities
  WHERE regexp_like(occupation, 'actor|actress', 'i');
