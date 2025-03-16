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


🔹 Challenge 3: Create a docker-compose.yml file to launch a Flask API and a PostgreSQL database together.


🔹 Challenge 4: Implement environment variables in your Docker Compose file to configure database credentials securely.


🔹 Challenge 5: Deploy a WordPress site using Docker Compose (WordPress + MySQL).


🔹 Challenge 6: Create a multi-container setup where an Nginx container acts as a reverse proxy for a backend service.


🔹 Challenge 7: Set up a network alias for a database container and connect an application container to it.


🔹 Challenge 8: Use docker inspect to check the assigned IP address of a running container and communicate with it manually.


🔹 Challenge 9: Deploy a Redis-based caching system using Docker Compose with a Python or Node.js app.


🔹 Challenge 10: Implement container health checks in Docker Compose (healthcheck: section).
