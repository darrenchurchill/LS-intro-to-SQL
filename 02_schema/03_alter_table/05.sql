/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Schema
 * Chapter 3: Alter a Table
 * Exercise 5
 *
 * https://launchschool.com/books/sql/read/alter_table#exercises
 *
 * Change the `max_weight_kg` column in the `animals` table so that it can hold
 * values in the range 0.0001 kg - 200,000 kg.
 */

-- for encyclopedia db
ALTER TABLE animals ALTER COLUMN max_weight_kg TYPE decimal(10, 4);
