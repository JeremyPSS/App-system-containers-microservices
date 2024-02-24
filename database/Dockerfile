# Use the official MariaDB image as base
FROM mariadb:latest

# Set environment variables
ENV MARIADB_ROOT_PASSWORD=root
ENV MARIADB_USER=root
ENV MARIADB_DATABASE=system

# Expose the MySQL port
EXPOSE 3306

# Copy the data directory from the host to the container
VOLUME /var/lib/mysql

# Specify the entry point
#CMD ["mysqld"]
