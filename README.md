# Modern Full Stack Application
This repository is comprised of a simple set of services seen in todays web application market. (`Docker`, `Django`, `Next.js`, `PostgreSQL` and `Redis`) 

Use this repository as a starting point for launching your own application.

## Docker
Docker is an open-source platform that allows developers to package applications and their dependencies into lightweight, portable containers. These containers provide a consistent and isolated environment for running applications, regardless of the underlying host system. Docker enables easy deployment, scaling, and management of applications, ensuring they run reliably across different environments. With its efficient resource utilization and straightforward tooling, Docker has revolutionized the way software is developed, delivered, and scaled, making it a popular choice for modern application deployment.

### Essential Docker commands
1. `docker compose up ` Builds, creates, and starts all containers defined in the `docker compose.yml` file.

2. `docker compose down ` Stops and removes all containers, networks, and volumes created by `docker compose up`.

3. `docker compose start ` Starts existing containers defined in the `docker compose.yml` file.

4. `docker compose stop ` Stops running containers defined in the `docker compose.yml` file without removing them.

5. `docker compose restart ` Restarts containers defined in the `docker compose.yml` file.

6. `docker compose ps ` Lists the status of containers defined in the `docker compose.yml` file.

7. `docker compose logs ` Displays the logs of containers defined in the `docker compose.yml` file.

8. `docker compose exec <service-name> <command> ` Runs a command within a running service container.

9. `docker compose build ` Builds or rebuilds the images defined in the `docker compose.yml` file.

10. `docker compose pull ` Pulls the latest version of images defined in the `docker compose.yml` file.

11. `docker compose down --volumes ` Stops and removes containers, networks, and volumes created by `docker compose up`, including named volumes.

## Django
Django is a high-level Python web framework that allows developers to build secure and scalable web applications quickly. Its purpose is to provide a structured and efficient development environment, enabling the creation of robust and maintainable websites or web services. 
### [See project readme here](https://github.com/piqueprototype/modern_full_stack/tree/main/backend)

## Next.js
Next.js is a React framework that focuses on server-side rendering and provides features like automatic code splitting and optimized routing. It is designed to build modern, dynamic web applications with excellent performance and SEO capabilities. 
### [See project readme here](https://github.com/piqueprototype/modern_full_stack/tree/main/frontend)

## PostgreSQL
PostgreSQL is a powerful open-source relational database management system that ensures data integrity and provides advanced features for managing and querying structured data. Its purpose is to store and retrieve data efficiently, handle complex transactions, and offer scalability and reliability for applications. 

### Essential PostgreSQL Commands
These commands provide essential functionality for managing databases, executing SQL queries, creating backups, and performing administrative tasks in PostgreSQL. They help you interact with the PostgreSQL server efficiently and perform common database operations.

1. **psql**: This command launches the PostgreSQL interactive terminal, also known as the psql command-line interface. It allows you to interact with the PostgreSQL server and execute SQL queries, manage databases, users, and perform various administrative tasks.

2. **createdb**: This command is used to create a new database in PostgreSQL. It creates a new database with the specified name, which can then be used to store data and tables.

3. **dropdb**: This command is used to delete a database in PostgreSQL. It permanently removes the specified database, including all its tables, data, and other objects.

4. **pg_dump**: This command is used to create a logical backup of a PostgreSQL database. It generates a SQL script that contains all the necessary SQL statements to recreate the database schema and data.

5. **pg_restore**: This command is used to restore a PostgreSQL database from a backup created using pg_dump. It reads the backup file and restores the database schema and data.

6. **psql -c \<command>**: This command allows you to execute a single SQL command directly from the command line, without entering the psql interactive terminal. It is useful for executing simple SQL statements or administrative commands quickly.

7. **\l**: This command is used within the psql terminal to list all available databases in the PostgreSQL server.

8. **\dt**: This command is used within the psql terminal to list all tables in the current database.

9. **\d \<table_name>**: This command is used within the psql terminal to display detailed information about a specific table, such as its columns, data types, constraints, and indexes.

10. **\du**: This command is used within the psql terminal to list all database users (roles) in the PostgreSQL server.

11. **\q**: This command is used within the psql terminal to exit and quit the interactive psql session.

## Redis
Redis is an in-memory data structure store that can be used as a database, cache, or message broker. Its purpose is to provide fast access to data by storing it in memory, making it suitable for use cases that require high-speed data retrieval, such as caching, real-time analytics, and session management.

### Essential Redis Commands
These commands provide essential functionality for working with data in Redis. They allow you to set and retrieve values, manage keys and expiration times, perform operations on lists, sorted sets, and hashes, and more. Redis commands are simple, yet powerful, enabling efficient data storage and retrieval in Redis-based applications.

1. **SET \<key> \<value>**: Sets the value of a key in Redis. It associates the specified value with the given key, overwriting any previous value if the key already exists.

2. **GET \<key>**: Retrieves the value associated with a key in Redis. It returns the value corresponding to the specified key.

3. **DEL \<key>**: Deletes a key and its associated value from Redis. It removes the specified key and its value from the database.

4. **EXPIRE \<key> \<seconds>**: Sets an expiration time (in seconds) for a key in Redis. After the specified duration, the key will be automatically deleted from the database.

5. **KEYS \<pattern>**: Retrieves all keys matching a specified pattern in Redis. It returns a list of keys that match the specified pattern. Note that this command can be resource-intensive and should be used with caution in production environments.

6. **INCR \<key>**: Increments the value of a key by 1 in Redis. If the key does not exist, it is initialized with a value of 0 before incrementing.

7. **DECR \<key>**: Decrements the value of a key by 1 in Redis. If the key does not exist, it is initialized with a value of 0 before decrementing.

8. **LPUSH \<key> \<value>**: Pushes a value onto the head of a list in Redis. It adds the specified value to the beginning of the list associated with the given key.

9. **RPUSH \<key> \<value>**: Pushes a value onto the tail of a list in Redis. It adds the specified value to the end of the list associated with the given key.

10. **LPOP \<key>**: Removes and retrieves the first element from a list in Redis. It removes and returns the element at the head of the list associated with the given key.

11. **RPOP \<key>**: Removes and retrieves the last element from a list in Redis. It removes and returns the element at the tail of the list associated with the given key.

12. **ZADD \<key> \<score> \<member>**: Adds a member with a score to a sorted set in Redis. It inserts the specified member with the given score into the sorted set associated with the given key.

13. **ZRANGE \<key> \<start> \<stop>**: Retrieves a range of members from a sorted set in Redis. It returns a range of members, sorted by their scores, from the sorted set associated with the given key, based on the specified start and stop indices.

14. **HSET \<key> \<field> \<value>**: Sets the value of a field in a hash in Redis. It associates the specified value with the given field within the hash associated with the given key.

15. **HGET \<key> \<field>**: Retrieves the value of a field in a hash in Redis. It returns the value associated with the specified field within the hash associated with the given key.
