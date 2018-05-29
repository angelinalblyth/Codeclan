# SQL Homework

The GFT is having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'

```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:

```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions.  Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1. Return ALL the data in the 'movies' table.

SELECT * FROM movies ORDER BY id;

2. Return ONLY the name column from the 'people' table

SELECT name FROM people;

3. Oh bother! Someone at CodeClan spelled Campbell's name wrong! Change it to reflect the proper spelling (change 'Cambel Millar' to 'Campbell Miller').

UPDATE people SET name = 'Campbell Miller' WHERE name = 'Cambel Millar';

4. Return ONLY your name from the 'people' table.

SELECT name from people WHERE name = 'Angelina Blyth';

5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE from movies WHERE title = 'Batman Begins';

6. Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('John McCollum');

7. Oh no! Nefarious G5 instructor Alan Russell has decided to hijack our movie evening! Remove him from the table of people.

DELETE FROM people WHERE name = 'Alan Russell';

8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');

9. The cinema would also like to make the Guardian movies a back-to-back feature. Update the 'Guardians of the Galaxy' show time from 16:50 to 20:00

UPDATE movies SET show_time = '20:00' WHERE title = 'Guardians of the Galaxy';

## Extension

1. Research how to delete multiple entries from your table in a single command.
