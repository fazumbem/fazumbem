docker stop $(docker ps -aqf "name=fazumbem_webapp")
docker stop $(docker ps -aqf "name=fazumbem_api")

docker rm $(docker ps -aqf "name=fazumbem_webapp")
docker rm $(docker ps -aqf "name=fazumbem_api")
