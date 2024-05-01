/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Schema
 * Chapter 2: Create and View Tables
 * Exercise 3
 *
 * https://launchschool.com/books/sql/read/create_table#exercises
 *
 * Create a table called `famous_people`. It should have the following columns:
 *
 * - an `id` column that contains auto-incrementing values
 * - a `name` column. This should contain a string of up to 100 characters in
 *   length.
 * - a `occupation` column. This should contain a string of up to 150 characters
 *   in length.
 * - a `date_of_birth` column that should contain each person's date of birth in
 *   a string of up to 50 characters.
 * - a `deceased` column that contains either `true` or `false`
 *
 * The table should prevent `NULL` values being added to the `name` column. If
 * the value of the `deceased` column is absent or unknown then `false` should
 * be used.
 */

-- for encyclopedia db
DROP TABLE IF EXISTS famous_people;

CREATE TABLE famous_people(
  id serial,
  name varchar(100) NOT NULL,
  occupation varchar(150),
  date_of_birth varchar(50),
  deceased boolean DEFAULT false
);
