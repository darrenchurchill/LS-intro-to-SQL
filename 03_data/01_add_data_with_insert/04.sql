/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 1: Add Data with INSERT
 * Exercise 4
 *
 * https://launchschool.com/books/sql/read/add_data#exercises
 *
 * Add an entry for the actress Scarlett Johansson, who was born on November
 * 22nd, 1984. Use the default value for the `deceased` column.
 */

-- for encyclopedia db
INSERT INTO celebrities
  (first_name, last_name, occupation, date_of_birth)
  VALUES
  ('Scarlett', 'Johansson', 'actress', 'Nov-22-1984');
