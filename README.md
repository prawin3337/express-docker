docker images -a
docker container ls -a
docker run -it <image name> (ex: ubunto OR mongodb/mongodb-community-server)
docker build -t node-server .
docker run -it -p 3000:3000 node-server
docker exec -it <container-id> bash
docker run -it -e PORT=4000 -p 4000:4000 node-server

# To run multiple containers
docker compose build // build local images
docker compose up (uses docker-compose.yml file)
docker compose up -d // background run
docker compose down // remove container stack
