# Modern Full Stack Application
This repository is comprised of a simple set of services seen in todays web application market. (`Django`, `Next.js`, `PostgreSQL` and `Redis`) 

Use this repository as a starting point for launching your own application.

## Services explained 

### Django
Django is a high-level Python web framework that allows developers to build secure and scalable web applications quickly. Its purpose is to provide a structured and efficient development environment, enabling the creation of robust and maintainable websites or web services. 

### Next.js
Next.js is a React framework that focuses on server-side rendering and provides features like automatic code splitting and optimized routing. It is designed to build modern, dynamic web applications with excellent performance and SEO capabilities. 

### PostgreSQL
PostgreSQL is a powerful open-source relational database management system that ensures data integrity and provides advanced features for managing and querying structured data. Its purpose is to store and retrieve data efficiently, handle complex transactions, and offer scalability and reliability for applications. 

### Redis
Redis is an in-memory data structure store that can be used as a database, cache, or message broker. Its purpose is to provide fast access to data by storing it in memory, making it suitable for use cases that require high-speed data retrieval, such as caching, real-time analytics, and session management.

## Docker commands
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
