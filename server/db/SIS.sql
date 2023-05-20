DROP SCHEMA IF EXISTS library CASCADE;
DROP TABLE IF EXISTS library.locations CASCADE;
DROP TABLE IF EXISTS library.books CASCADE;
DROP TABLE IF EXISTS library.wrote CASCADE;
DROP TABLE IF EXISTS library.authors CASCADE;

CREATE SCHEMA library;

CREATE TABLE library.locations (
    location_id SERIAL NOT NULL PRIMARY KEY,
    title text NOT NULL,
    "address" text NOT NULL,
    phone varchar(15) NOT NULL
);

CREATE TABLE library.authors (
    author_id SERIAL NOT NULL PRIMARY KEY,
    first_name text NOT NULL,
    middle_name text,
    last_name text NOT NULL
);

CREATE TABLE library.books (
    book_id SERIAL NOT NULL PRIMARY KEY,
    title text NOT NULL,
    genre text NOT NULL,
    sub_genre text,
    summary text NOT NULL,
    publish_date date NOT NULL
);

CREATE TABLE library.wrote (
    author_id integer NOT NULL,
    book_id integer NOT NULL,
    CONSTRAINT author_id
        FOREIGN KEY(author_id)
        REFERENCES library.authors(author_id),
    CONSTRAINT book_id
        FOREIGN KEY(book_id)
        REFERENCES library.books(book_id)
);
