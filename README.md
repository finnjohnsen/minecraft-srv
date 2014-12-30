# Dockerfile for setting up your own minecraft server

This is uploaded to the [Docker Hub](https://registry.hub.docker.com/u/finnjohnsen/minecraft-srv), so you don't have to pull this Dockerfile.

## Simplest installation:
You should change the path to minecraft_data to your path.

docker run -d -v /home/finn/minecraft_data:/data -p 25565:25565 -p 25575:25575 -name minecraft -i finnjohnsen/minecraft-srv

