# bookmark-manager

-- Show a List of Bookmarks --

As a User,
so that I can see what I have bookmarked,
I would like to see a list of my bookmarks.

Domain Model
Bookmarks (class) -> view (method)

The Bookmarks class stores all the bookmarks, while the view is the method that lists all the bookmarks.

-- Setting Up the Database --

a) Download PostgreSQL through the command line, using Homebrew, by typing "brew install postgresql".
b) Connect to psql, a REPL, by typing "psql postrges".
c) Create the database using the psql command CREATE DATABASE bookmark_manager; (Always remember the semicolon (;)).
d) Connect to the database using the pqsl command '\c', then the name of the database. In this case "\c bookmark_manager;"
e) Inspect the list of tables using the command '\d'. There should be a database there there, under 'Names', with the name "bookmarks".
f) Run the query we have saved in the file 01_create_bookmarks_table.sql.
g) To quit, use the '\q' command.