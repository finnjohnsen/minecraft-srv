# Dockerfile for setting up a minecraft server

This image is also uploaded to the [Docker Hub](https://registry.hub.docker.com/u/finnjohnsen/minecraft-srv), so you can just run the command below and you've got the server running.

## Simplest installation:
Change the path minecraft_data to your path.

docker run -d -v /home/finn/minecraft_data:/data -p 25565:25565 -p 25575:25575 -name minecraft -i finnjohnsen/minecraft-srv

