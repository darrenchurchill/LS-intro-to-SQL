/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Schema
 * Chapter 2: Create and View Tables
 * Exercise 2
 *
 * https://launchschool.com/books/sql/read/create_table#exercises
 *
 * Create a table called `countries`. It should have the following columns:
 *
 * - an `id` column of type `serial`
 * - a `name` column of type `varchar(50)`
 * - a `capital` column of type `varchar(50)`
 * - a `population` column of type `integer`
 *
 * The `name` column should have a `UNIQUE` constraint. The `name` and `capital`
 * columns should both have `NOT NULL` constraints.
 */

-- for encyclopedia db
DROP TABLE IF EXISTS countries;

CREATE TABLE countries(
  id serial,
  name varchar(50) UNIQUE NOT NULL,
  capital varchar(50) NOT NULL,
  population integer
);
