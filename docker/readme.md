Some useful docker commands

## 1. Pull an Image
```bash
docker pull image_name
```
Pulls a Docker image from a registry (e.g., Docker Hub).

## 2. Run a Container
```bash
docker run image_name
```
Starts a container from an image.

## 3. List Running Containers
```bash
docker ps
```
Displays a list of running containers.

## 4. List All Containers
```bash
docker ps -a
```
Shows all containers, including stopped ones.

## 5. Stop a Container
```bash
docker stop container_id
```
Stops a running container.

## 6. Remove a Container
```bash
docker rm container_id
```
Deletes a stopped container.

## 7. List Docker Images
```bash
docker images
```
Lists all available Docker images.

## 8. Remove an Image
```bash
docker rmi image_name
```
Deletes a Docker image.

## 9. Execute a Command in a Container
```bash
docker exec -it container_id command
```
Runs a command inside a running container.

## 10. View Container Logs
```bash
docker logs container_id
```
Displays logs from a container.

## 11. Create a Docker Network
```bash
docker network create network_name
```
Creates a user-defined Docker network.

## 12. Build an Image from a Dockerfile
```bash
docker build -t image_name .
```
Builds a Docker image from a Dockerfile.

## 13. Inspect a Container
```bash
docker inspect container_id
```
Shows detailed information about a container.

## 14. Remove All Containers
```bash
docker rm $(docker ps -a -q)
```
Removes all stopped containers.

## 15. Remove All Images
```bash 
docker rmi $(docker images -q)
 ```
Deletes all Docker images.

## 16. Start a Docker Container
```bash 
docker start container_id
``` 
Starts a stopped Docker container.

## 17. Prune Unused Docker Images
```bash 
docker image prune -a 
``` 
Removes unused Docker images.

## 18. Restart a Docker Container
```bash 
docker restart container_id 
``` 
Restarts a running Docker container.

## 19. Attach to a Running Container
```bash 
docker attach container_id 
``` 
Attaches your terminal’s standard input, output, and error (or any combination of the three) to a running container.

## 20. Copy Files from a Container to the Host
```bash 
docker cp container_id:/file/path/in/container /host/path/to/copy/file/to 
``` 
Copies files or directories from a container’s filesystem to the host path.
