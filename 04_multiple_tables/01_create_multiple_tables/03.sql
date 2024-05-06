/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 1: Create Multiple Tables
 * Exercise 3
 *
 * https://launchschool.com/books/sql/read/table_relationships#exercises
 *
 * Examine the data below:
 *
 * Album Name        | Released         | Genre                           | Label                     | Singer Name
 * ----              | ----             | ----                            | ----                      | ----
 * Born to Run       | August 25, 1975  | Rock and roll                   | Columbia                  | Bruce Springsteen
 * Purple Rain       | June 25, 1984    | Pop, R&B, Rock                  | Warner Bros               | Prince
 * Born in the USA   | June 4, 1984     | Rock and roll, pop              | Columbia                  | Bruce Springsteen
 * Madonna           | July 27, 1983    | Dance-pop, post-disco           | Warner Bros               | Madonna
 * True Blue         | June 30, 1986    | Dance-pop, Pop                  | Warner Bros               | Madonna
 * Elvis             | October 19, 1956 | Rock and roll, Rhythm and Blues | RCA Victor                | Elvis Presley
 * Sign o' the Times | March 30, 1987   | Pop, R&B, Rock, Funk            | Paisley Park, Warner Bros | Prince
 * G.I. Blues        | October 1, 1960  | Rock and roll, Pop              | RCA Victor                | Elvis Presley
 *
 * We want to create an `albums` table to hold all the above data except the
 * singer name, and create a reference from the `albums` table to the `singers`
 * table to link each album to the correct singer. Write the necessary SQL
 * statements to do this and to populate the table with data. Assume Album Name,
 * Genre, and Label can hold strings up to 100 characters. Include and
 * auto-incrementing `id` column in the `albums` table.
 */
-- @block
-- @conn encyclopedia
-- @label reset -- drop albums if exists
DROP TABLE IF EXISTS albums
;

-- @label reset -- drop singers PK if exists
ALTER TABLE singers
DROP CONSTRAINT IF EXISTS singers_pkey
;

-- @label add singers PK
ALTER TABLE singers
ADD PRIMARY KEY (id)
;

-- @label create albums table
CREATE TABLE albums (
  id serial PRIMARY KEY,
  album_name varchar(100),
  released date,
  genre varchar(100),
  label varchar(100),
  singer_id int,
  FOREIGN KEY (singer_id) REFERENCES singers (id) ON DELETE CASCADE
)
;

-- @block
-- @conn encyclopedia
-- @label view singers
SELECT
  first_name,
  last_name,
  id
FROM
  singers
;

/*
Bruce Springsteen -- 1
Frank Sinatra -- 3
Madonna -- 7
Prince -- 8
Elvis Presley -- 9
*/
-- @block
-- @conn encyclopedia
-- @label insert into albums
INSERT INTO
  albums (album_name, released, genre, label, singer_id)
VALUES
  ('Born to Run', 'August 25, 1975', 'Rock and roll', 'Columbia', 1),
  ('Purple Rain', 'June 25, 1984', 'Pop, R&B, Rock', 'Warner Bros', 8),
  ('Born in the USA', 'June 4, 1984', 'Rock and roll, pop', 'Columbia', 1),
  ('Madonna', 'July 27, 1983', 'Dance-pop, post-disco', 'Warner Bros', 7),
  ('True Blue', 'June 30, 1986', 'Dance-pop, Pop', 'Warner Bros', 7),
  ('Elvis', 'October 19, 1956', 'Rock and roll, Rhythm and Blues', 'RCA Victor', 9),
  (
    'Sign o'' the Times',
    'March 30, 1987',
    'Pop, R&B, Rock, Funk',
    'Paisley Park, Warner Bros',
    8
  ),
  ('G.I.Blues', 'October 1, 1960', 'Rock and roll, Pop', 'RCA Victor', 9)
;

-- @block
-- @label view albums
SELECT
  *
FROM
  albums
;
