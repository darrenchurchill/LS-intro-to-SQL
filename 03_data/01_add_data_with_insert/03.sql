/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 1: Add Data with INSERT
 * Exercise 3
 *
 * https://launchschool.com/books/sql/read/add_data#exercises
 *
 * Add an entry to the `celebrities` table for the singer and songwriter Bruce
 * Springsteen, who was born on September 23rd 1949 and is still alive.
 */

-- for encyclopedia db
INSERT INTO celebrities
  (first_name, last_name, occupation, date_of_birth, deceased)
  VALUES
  ('Bruce', 'Springsteen', 'singer songwriter', 'Sep-23-1949', false);
