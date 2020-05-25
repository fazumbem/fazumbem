docker stop $(docker ps -aqf "name=fazumbem_webapp")
docker stop $(docker ps -aqf "name=fazumbem_api")

docker rm $(docker ps -aqf "name=fazumbem_webapp")
docker rm $(docker ps -aqf "name=fazumbem_api")

docker rmi fazumbem_api fazumbem_webapp
docker-compose run fazumbem_webapp
