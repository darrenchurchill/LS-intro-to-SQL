/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 2: Select Queries
 * Exercise 9
 *
 * https://launchschool.com/books/sql/read/select_queries#exercises
 *
 * Write a query that will return the first name and last name of all entries in
 * the celebrities table where the value of the deceased column is not true.
 */

-- for encyclopedia db
SELECT first_name, last_name FROM celebrities
  WHERE NOT deceased OR deceased IS NULL;
