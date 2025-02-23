docker images -a
docker container ls -a
docker build -t node-server .
docker run -it -p 3000:3000 node-server
docker exec -it <container-id> bash
docker run -it -e PORT=4000 -p 4000:4000 node-server