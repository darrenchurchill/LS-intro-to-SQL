/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 4: Update Data
 * Exercise 3
 *
 * https://launchschool.com/books/sql/read/update_and_delete_data#exercises
 *
 * Add a column to the `countries` table called `continent` to hold strings of
 * up to 50 characters.
 *
 * Update all the rows in the table so France and Germany have a value of
 * `Europe` for this column, Japan has a value of `Asia` and the USA has a value
 * of `North America`.
 */
-- for encyclopedia db
ALTER TABLE countries
ADD COLUMN continent varchar(50)
;

UPDATE countries
SET
  continent = 'Europe'
WHERE
  name = 'France'
  OR name = 'Germany'
;

UPDATE countries
SET
  continent = 'Asia'
WHERE
  name = 'Japan'
;

UPDATE countries
SET
  continent = 'North America'
WHERE
  name = 'USA'
;
