/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 1: Add Data with INSERT
 * Exercise 8
 *
 * https://launchschool.com/books/sql/read/add_data#exercises
 *
 * Add the Elvis data to `celebrities`:
 *
 * First Name | Last Name | Occupation            | D.O.B        | Deceased
 * ----       | ----      | ----                  | ----         | ----
 * Elvis      | Presley   | singer musician actor | '01/08/1935' | NULL
 */

-- for encyclopedia db
ALTER TABLE celebrities ALTER COLUMN last_name DROP NOT NULL;

INSERT INTO celebrities
  (first_name, last_name, occupation, date_of_birth, deceased)
  VALUES
  ('Elvis', 'Presley', 'singer musician actor', '01/08/1935', NULL);
