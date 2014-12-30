## Dockerfile for setting up your own minecraft server

This uploaded to the [Docker Hub](https://registry.hub.docker.com/u/finnjohnsen/minecraft-srv), so you simply have to:

# Installation:
docker run -d -v /home/finn/minecraft_data:/data -p 25565:25565 -p 25575:25575 -name minecraft -i finnjohnsen/minecraft-srv