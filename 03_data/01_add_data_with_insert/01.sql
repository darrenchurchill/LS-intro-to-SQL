/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 1: Add Data with INSERT
 * Exercise 1
 *
 * https://launchschool.com/books/sql/read/add_data#exercises
 *
 * Make sure you are connected to the `encyclopedia` database. Add the following
 * data to the `countries` table:
 *
 * Name   | Capital | Population
 * ----   | ----    | ----
 * France | Paris   | 67,158,000
 */

-- for encyclopedia db
INSERT INTO countries
  (name, capital, population)
  VALUES
  ('France', 'Paris', 67158000);
