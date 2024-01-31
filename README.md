# Number Guessing Game Database

This project provides a PostgreSQL database dump named "number_guess," capturing information about number guessing game sessions and user participation.

## Database Structure

### 1. Games Table

- `game_id` (Primary Key)
- `number_guesses`
- `user_id` (Foreign Key referencing users)

### 2. Users Table

- `user_id` (Primary Key)
- `username` (Unique)

## Usage

1. **Install PostgreSQL:**
   - Ensure you have PostgreSQL installed on your system.

2. **Create Database:**
   - Create a database named "number_guess" using the following command:

     ```sql
     CREATE DATABASE number_guess;
     ```

3. **Connect to Database:**
   - Connect to the "number_guess" database:

     ```sql
     \c number_guess;
     ```

4. **Run SQL Script:**
   - Execute the provided SQL script to create tables and insert sample data:

     ```sql
     -- Replace with the actual path to your SQL script
     \i path/to/your/script.sql;
     ```

Feel free to explore the number guessing game database!
