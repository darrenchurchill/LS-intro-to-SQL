/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 1: Create Multiple Tables
 * Exercise 1
 *
 * https://launchschool.com/books/sql/read/table_relationships#exercises
 *
 * Make sure you are connected to the `encyclopedia` database. We want to hold
 * the continent data in a separate table from the country data.
 *
 * 1. Create a `continents` table with an auto-incrementing `id` column (set as
 * the Primary Key), and a `continent_name` column which can hold the same data
 * as `countries`'s `continent` column.
 * 2. Remove `countries`'s `continent` column.
 * 3. Add a `continent_id` column to the `countries` table of type `integer`.
 * 4. Add a Foreign Key constraint to the `continent_id` column referencing
 * `continents`'s `id` field.
 */
-- @block
-- @conn encyclopedia
-- @label reset -- drop countries & continents
DROP TABLE IF EXISTS countries,
continents
;

-- @label reset -- (re)-create countries table
CREATE TABLE countries (
  id serial,
  name varchar(50) UNIQUE NOT NULL,
  capital varchar(50) NOT NULL,
  population integer
)
;

-- @label 1. create continents table
CREATE TABLE continents (id serial, continent_name varchar(50), PRIMARY KEY (id))
;

-- @label 2. drop continent from countries
ALTER TABLE countries
DROP IF EXISTS continent
;

-- @label 3. add continent_id to countries
ALTER TABLE countries
ADD IF NOT EXISTS continent_id int
;

-- @label 4. add FK: (continent_id) REF continents (id)
ALTER TABLE countries
ADD FOREIGN KEY (continent_id) REFERENCES continents (id) ON DELETE CASCADE
;
