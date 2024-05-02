/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 1: Add Data with INSERT
 * Exercise 7
 *
 * https://launchschool.com/books/sql/read/add_data#exercises
 *
 * Update the `last_name` column of the `celebrities` table so the data in the
 * previous question can be entered, and then add the data to the table.
 */

-- for encyclopedia db
ALTER TABLE celebrities ALTER COLUMN last_name DROP NOT NULL;

INSERT INTO celebrities
  (first_name, occupation, date_of_birth, deceased)
  VALUES
  ('Madonna', 'singer actress', '08/16/1958', false),
  ('Prince', 'singer songwriter musician actor', '06/07/1958', true);
