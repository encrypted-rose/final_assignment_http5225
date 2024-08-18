## About the Assigment

This is small project that keeps track of a list of games and its publisher using Laravel as way to showcase a basic CRUD functionality of a database. 

A copy of the database is included in the files.

To access to the initial view of this assigment the route would be: `[http://Server-number]`/games

## Database Schema

# Database name: **Games**

## Entities

### Games

- `id` - BIGINT(20), Primary Key, Auto Increment, Not Null
- `game_name` - VARCHAR(255), Not null
- `publisher_id` - BIGINT(20), Foreign Key (from Publishers table), Not null
- `genre` - VARCHAR(255), Not Null
- `release_date` - date, Not Null
- `summary` - VARCHAR(255), Not Null

### Publishers

- `id` - BIGINT(20), Primary Key, Auto Increment, Not Null
- `name` - VARCHAR(255), Not null
- `date_created` - date, Not Null
- `country` - VARCHAR(255), Not null
- `status` - VARCHAR(255), Not null

### Tables Relationship

- A Game is published by a Publisher
- A Publisher can be associated with many Games

======================================================================================

## CRUD

### Games

- **Create**: Add a New game
    - Note: Due to Controllers/Routing issues with the **Publishers** it's not working correctly.

- **Read**: View all the Games listed.

- **Update**: Update the information of a Game
    - Note: Due to Controllers/Routing issues with the **Publishers** it's not working correctly.

-**Delete**: Delete a specific Game.
    - Note: Game can get soft deleted, however when it comes to restoring or fulyl deleting Laravel is throwing an error stating there's not "enough arguments".

### Publishers

- **Create**: Add a New Publisher
    - Note: Not configured, due to *Read* error.

- **Read**: View all the Games listed.
    - Note: Issue with "Undefined variable" Not allowing me to view the list. The page is coded.

- **Update**: Update the information of a Game
   - Note: Not configured, due to *Read* error.

-**Delete**: Delete a specific Game.
    - Note: Not configured due to *Read* error.

======================================================================================

## Notes

Due to lack of time and unable to debug certain errors, it was not possible to complete all the CRUD functionalities. At the bare mininum what I wanted to showcase were those 2 CRUDs modules however debugging the errors have proved a complex task, and I don't fully understand where the issues are located.

Would have honestly loved to understand a bit more regarding these errors, and how all the elements fully connect as I'm not completely sure where some files/locations are and how everything comes together.