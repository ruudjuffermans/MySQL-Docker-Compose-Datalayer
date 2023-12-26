# Docker Compose Setup for MySQL and phpMyAdmin
This repository contains a Docker Compose file for setting up a MySQL server and phpMyAdmin interface. It's designed to quickly get you up and running with a MySQL database accessible via phpMyAdmin.

### Prerequisites
Before you start, make sure you have Docker and Docker Compose installed on your machine. If not, you can install them from the Docker website.

### Components
The `docker-compose.yml` file includes the following services:

- `mysql`: The MySQL database server.
- `phpmyadmin`: A phpMyAdmin instance for database management.

### Configuration
#### MySQL Service
- Port: The service is configured to expose MySQL on port 3307 of your host machine.
- Volumes:
    - Persistent MySQL storage is mapped to `./mysql/shared` on the host.
    - Data directory is mapped to a named volume `db` for persistent data storage.
- Environment: MySQL configuration can be adjusted using environment variables defined in `./mysql/.env.`

#### phpMyAdmin Service
- Accessible via port 8081 on your host machine.
- Depends on the mysql service.
- Environment variables are set to connect to the MySQL service.

### Getting Started
To get the environment up and running, follow these steps:

1. Clone this repository:
```bash
git clone https://github.com/ruudjuffermans/MySQL-Docker-Compose-Datalayer.git
```

2. Navigate to the cloned directory:
```bash
cd MySQL-Docker-Compose-Datalayer
```

3. Start the services:
```bash
docker-compose up -d
```

4. Access phpMyAdmin in your web browser at http://localhost:8081.

5. To stop and remove the services, use:
```bash
docker-compose down
```

### Persistence
- The MySQL data is persisted in the db volume and the ./mysql/shared directory on your host.
- Ensure not to remove this volume and directory if you wish to keep your database data.

### Network
- Both services are attached to a custom network named backend, facilitating secure communication between them.