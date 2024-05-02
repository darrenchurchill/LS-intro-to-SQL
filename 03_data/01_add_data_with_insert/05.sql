/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 1: Add Data with INSERT
 * Exercise 5
 *
 * https://launchschool.com/books/sql/read/add_data#exercises
 *
 * Add the following two entries to the `celebrities` table with a single
 * `INSERT` statement. For Frank Sinatra, set `true` as the value for the
 * `deceased` column. For Tom Cruise, don't set an explicit value for the
 * `deceased` column, but use the default value.
 *
 * First Name | Last Name | Occupation   | D.O.B
 * ----       | ----      | ----         | ----
 * Frank      | Sinatra   | singer actor | Dec 12, 1915
 * Tom        | Cruise    | actor        | July 03, 1962
 */

-- for encyclopedia db
INSERT INTO celebrities
  (first_name, last_name, occupation, date_of_birth, deceased)
  VALUES
  ('Frank', 'Sinatra', 'singer actor', 'Dec-12-1915', true),
  ('Tom', 'Cruise', 'actor', 'July-03-1962', DEFAULT);
