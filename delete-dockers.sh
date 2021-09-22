echo -e "Docker Prune 1.0"
echo -e "\nDelete all docker images and volumes"
docker system prune --volumes
docker container prune 
docker image prune
docker volume prune
docker network prune

