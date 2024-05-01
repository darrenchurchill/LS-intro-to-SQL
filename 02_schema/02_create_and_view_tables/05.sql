/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Schema
 * Chapter 2: Create and View Tables
 * Exercise 5
 *
 * https://launchschool.com/books/sql/read/create_table#exercises
 *
 * Create a table in the `ls_burger` database called `orders`. The table should
 * have the following columns:
 *
 * - An `id` column, that should contain an auto-incrementing integer value
 * - A `customer_name` column, that should contain a string of up to 100
 *   characters
 * - A `burger` column, that should hold a string of up to 50 characters
 * - A `side` column, that should hold a string of up to 50 characters
 * - A `drink` column, that should hold a string of up to 50 characters
 * - A `order_total` column, that should hold a numeric value in dollars and
 *   cents. Assume that all orders will be less than $100.
 *
 * The `customer_name` and `order_total` columns should always contain a value.
 */

-- for ls_burger db
DROP TABLE IF EXISTS orders;

CREATE TABLE orders(
  id serial,
  customer_name varchar(100) NOT NULL,
  burger varchar(50),
  side varchar(50),
  drink varchar(50),
  order_total decimal(4, 2) NOT NULL
);
