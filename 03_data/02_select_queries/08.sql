/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 2: Select Queries
 * Exercise 8
 *
 * https://launchschool.com/books/sql/read/select_queries#exercises
 *
 * Write a query that returns the names of all the countries with a population
 * greater than 70 million but less than 200 million.
 */

-- for encyclopedia db
SELECT name FROM countries WHERE population > 70000000 AND population < 200000000;
