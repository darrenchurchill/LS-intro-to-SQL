/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 1: Add Data with INSERT
 * Exercise 2
 *
 * https://launchschool.com/books/sql/read/add_data#exercises
 *
 * Now add the following additional data to the `countries` table:
 *
 * Name    | Capital         | Population
 * ----    | ----            | ----
 * USA     | Washington D.C. | 325,365,189
 * Germany | Berlin          | 82,349,400
 * Japan   | Tokyo           | 126,672,000
 */

-- for encyclopedia db
INSERT INTO countries
  (name, capital, population)
  VALUES
  ('USA', 'Washington D.C.', 325365189),
  ('Germany', 'Berlin', 82349400),
  ('Japan', 'Tokyo', 126672000);
