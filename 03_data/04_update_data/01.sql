/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 4: Update Data
 * Exercise 1
 *
 * https://launchschool.com/books/sql/read/update_and_delete_data#exercises
 *
 * Make sure you are connected to the `encyclopedia` database. Add a column to
 * the `animals` table called `class` to hold strings of up to 100 characters.
 *
 * Update all the rows in the table so that this column holds the value `Aves`.
 */
-- for encyclopedia db
ALTER TABLE animals
ADD COLUMN class varchar(100)
;

UPDATE animals
SET
  class = 'Aves'
;
