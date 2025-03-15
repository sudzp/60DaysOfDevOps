## 60 Days DevOps Challenge: Day 8
### Docker Basics


🔹Challenge 1: Write a simple Dockerfile that runs a Python script using an official base image (python:3.9) or serves a static HTML page using Nginx.

```bash

    # How to run
    cd challenge1
    docker build . -t day08-challenge1
    docker run day08-challenge1
```

🔹 Challenge 2: Build a Docker image from your Dockerfile and tag it with a version (docker build -t myapp:v1 .).

```bash
    docker build . -t sudz/challenge2:v1
```

🔹 Challenge 3: Run a container from your custom image, map necessary ports, and test the app.

``` bash

    docker run -p 8080:8080 sudz/challenge2:v1
```

🔹 Challenge 4: Push your custom Docker image to Docker Hub.

``` bash
    docker push sudz/challenge2:v1 
```

🔹 Challenge 5: Use docker exec -it <container_id> bash to enter a running container and explore it.

```bash
    docker exec -it <container id> bash
```

🔹 Challenge 6: Run a detached container (-d flag), restart it, and check logs (docker logs <container_id>).

```bash
    docker run -p 8080:8080 -d sudz/challenge2:v1
    docker logs <container_id>
```