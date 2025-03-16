### Day 09 Challenges - Docker Networking, Volumes, and Compose


🔹Challenge 1: Create a custom bridge network and connect two containers (alpine and nginx).

```bash
    #Create custom network
    docker network create --driver bridge day09_network

    #Create nginx container in custom network
    docker run -d --name day09_nginx --network day09_network nginx

    #Create alpine container in custom network, open interactively
    docker run -it --name day09_alpine --network day09_network alpine

    #Ping to nginx container to check the connectivuty
    ping -c 4 day09_nginx

    #Inspect network and check if both container are in same custom network
    docker network inspect day09_network
```


🔹 Challenge 2: Run a MySQL container with a named volume (mysql_data) and confirm data persistence after container restart.

```bash

#Create mysql container with named volume
docker run -d --name day09_mysql \
  -e MYSQL_ROOT_PASSWORD=rootpassword \
  -e MYSQL_DATABASE=day09DB \
  -v mysql_data:/var/lib/mysql \
  mysql:latest

#Access the mysql DB
docker exec -it day09_mysql mysql -uroot -prootpassword

#Create table in DB

mysql> use day09DB
mysql> CREATE TABLE day09_challenge(id int primary key, name varchar(50));
mysql> insert into day09_challenge values(2, 'named volume');
mysql> select * from day09_challenge;
mysql> exit


#Now stop and remove mysql continaer
docker stop day09_mysql
docker remove day09_mysql

#check and inspect docker volume
docker volume inspect mysql_data

#Now again run the container and see of table exists
docker run -d --name day09_mysql \
  -e MYSQL_ROOT_PASSWORD=rootpassword \
  -e MYSQL_DATABASE=day09DB \
  -v mysql_data:/var/lib/mysql \
  mysql:latest

#Access the mysql DB and see table still exists
docker exec -it day09_mysql mysql -uroot -prootpassword

mysql> use day09DB
mysql> select * from day09_challenge;
mysql> exit


#To cleanup data entirely , remove the volume after stopping and removing container.

docker stop day09_mysql
docker remove day09_mysql

docker volume rm mysql_data
```


🔹 Challenge 3: Create a docker-compose.yml file to launch a Flask API and a PostgreSQL database together.


🔹 Challenge 4: Implement environment variables in your Docker Compose file to configure database credentials securely.


🔹 Challenge 5: Deploy a WordPress site using Docker Compose (WordPress + MySQL).


🔹 Challenge 6: Create a multi-container setup where an Nginx container acts as a reverse proxy for a backend service.


🔹 Challenge 7: Set up a network alias for a database container and connect an application container to it.


🔹 Challenge 8: Use docker inspect to check the assigned IP address of a running container and communicate with it manually.


🔹 Challenge 9: Deploy a Redis-based caching system using Docker Compose with a Python or Node.js app.


🔹 Challenge 10: Implement container health checks in Docker Compose (healthcheck: section).
