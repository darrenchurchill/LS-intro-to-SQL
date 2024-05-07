/**
 * Launch School Book
 * Introduction to SQL
 *
 * This file contains statements to create the "Users & Books" database built
 * in the *Introduction to SQL* book.
 *
 * https://launchschool.com/books/sql/read/introduction
 */
-- @block
-- @conn sql_book
-- @label drop existing tables
DROP TABLE IF EXISTS users,
addresses,
books,
reviews,
checkouts
;

-- @block
-- @conn sql_book
-- @label setup users table
-- @label create users table
CREATE TABLE users (
  id serial UNIQUE NOT NULL,
  full_name varchar(25) NOT NULL,
  enabled boolean DEFAULT TRUE,
  last_login TIMESTAMP WITHOUT TIME ZONE DEFAULT now()
)
;

-- @label add users PK
ALTER TABLE users
ADD PRIMARY KEY (id)
;

-- @label insert John Smith
INSERT INTO
  users (full_name, enabled)
VALUES
  ('John Smith', FALSE)
;

-- @label insert more users
INSERT INTO
  users (full_name)
VALUES
  ('Jane Smith'),
  ('Harry Potter'),
  ('Cookie Monster'),
  ('Big Bird')
;

-- @label add check full_name not empty
ALTER TABLE users
ADD CHECK (full_name <> '')
;

-- @block
-- @conn sql_book
-- @label create addresses table & insert data
-- @label create addresses table
CREATE TABLE addresses (
  user_id int,
  street varchar(30) NOT NULL,
  city varchar(30) NOT NULL,
  state varchar(30) NOT NULL,
  PRIMARY KEY (user_id),
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
)
;

-- @label insert into addresses table
INSERT INTO
  addresses (user_id, street, city, state)
VALUES
  (1, '1 Market Street', 'San Francisco', 'CA'),
  (2, '2 Elm Street', 'San Francisco', 'CA'),
  (3, '2 Main Street', 'Boston', 'MA')
;

-- @conn sql_book
-- @label create books table & insert data
-- @label create books table
CREATE TABLE books (
  id serial,
  title varchar(100) NOT NULL,
  author varchar(100) NOT NULL,
  published_date timestamp NOT NULL,
  isbn char(12),
  PRIMARY KEY (id),
  UNIQUE (isbn)
)
;

-- @label insert into books
INSERT INTO
  books (id, title, author, published_date, isbn)
VALUES
  (
    1,
    'My First SQL Book',
    'Mary Parker',
    '2012-02-22 12:08:17.320053-03',
    '981483029127'
  ),
  (
    2,
    'My Second SQL Book',
    'John Mayer',
    '1972-07-03 09:22:45.050088-07',
    '857300923713'
  ),
  (
    3,
    'My Third SQL Book',
    'Cary Flint',
    '2015-10-18 14:05:44.547516-07',
    '523120967812'
  )
;

-- @block
-- @label create reviews table & insert data
-- @label create reviews table
CREATE TABLE reviews (
  id serial,
  book_id int NOT NULL,
  reviewer_name varchar(255),
  content varchar(255),
  rating int,
  published_date timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (book_id) REFERENCES books (id) ON DELETE CASCADE
)
;

-- @label insert reviews data
INSERT INTO
  reviews (id, book_id, reviewer_name, content, rating, published_date)
VALUES
  (1, 1, 'John Smith', 'My first review', 4, '2017-12-10 05:50:11.127281-02'),
  (2, 2, 'John Smith', 'My second review', 5, '2017-10-13 15:05:12.673382-05'),
  (3, 2, 'Alice Walker', 'Another review', 1, '2017-10-22 23:47:10.407569-07')
;

-- @block
-- @conn sql_book
-- @label setup checkouts table & data
-- @label create checkouts table
CREATE TABLE checkouts (
  id serial,
  user_id int NOT NULL,
  book_id int NOT NULL,
  checkout_date timestamp,
  return_date timestamp,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
  FOREIGN KEY (book_id) REFERENCES books (id) ON DELETE CASCADE
)
;

-- @label insert into checkouts
INSERT INTO
  checkouts (id, user_id, book_id, checkout_date, return_date)
VALUES
  (1, 1, 1, '2017-10-15 14:43:18.095143-07', NULL),
  (2, 1, 2, '2017-10-05 16:22:44.593188-07', '2017-10-13 13:0:12.673382-05'),
  (3, 2, 2, '2017-10-15 11:11:24.994973-07', '2017-10-22 17:47:10.407569-07'),
  (4, 5, 3, '2017-10-15 09:27:07.215217-07', NULL)
;

-- @block
-- @conn sql_book
-- @label view tables
-- @label users
SELECT
  *
FROM
  users
;

-- @label addresses
SELECT
  *
FROM
  addresses
;

-- @label books
SELECT
  *
FROM
  books
;

-- @label reviews
SELECT
  *
FROM
  reviews
;

-- @label checkouts
SELECT
  *
FROM
  checkouts
;

-- @block
-- @conn sql_book
-- @label do joins
-- @label users (inner) join addresses
SELECT
  users.*,
  addresses.*
FROM
  users
  JOIN addresses ON users.id = addresses.user_id
;

-- @label users left (outer) join addresses
SELECT
  users.*,
  addresses.*
FROM
  users
  LEFT JOIN addresses ON users.id = addresses.user_id
;

-- @label reviews right (outer) join books
SELECT
  reviews.book_id,
  reviews.content,
  reviews.rating,
  reviews.published_date,
  books.id,
  books.title,
  books.author
FROM
  reviews
  RIGHT JOIN books ON reviews.book_id = books.id
;

-- @label users cross join addresses
-- cross joins are less common; they don't match rows, but instead return a
-- cross-product
SELECT
  *
FROM
  users
  CROSS JOIN addresses
;

-- @label multi join -- users join checkouts join books
SELECT
  users.full_name,
  books.title,
  checkouts.checkout_date
FROM
  users
  JOIN checkouts ON users.id = checkouts.user_id
  JOIN books ON books.id = checkouts.book_id
;

-- @block
-- @conn sql_book
-- @label aliasing
-- @label table aliasing -- users join checkouts join books
-- The `AS` in a table alias is optional
SELECT
  u.full_name,
  b.title,
  c.checkout_date
FROM
  users AS u
  JOIN checkouts AS c ON u.id = c.user_id
  JOIN books AS b ON b.id = c.book_id
;

-- @label column aliasing -- count # of checkouts
SELECT
  count(id) AS "Number of Books Checked Out"
FROM
  checkouts
;

-- @block
-- @conn sql_book
-- @label sub-queries
SELECT
  full_name
FROM
  users
WHERE
  id NOT IN (
    SELECT
      user_id
    FROM
      checkouts
  )
;
