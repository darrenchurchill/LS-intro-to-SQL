/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Getting Started
 * Chapter 1: SQL Basics Tutorial
 * Exercise 4
 *
 * https://launchschool.com/books/sql/read/basics_tutorial#exercises
 *
 * Write a query that returns the name of anyone who ordered onion rings.
 */

-- for ls_burger db
SELECT customer_name FROM orders WHERE side = 'Onion Rings';
