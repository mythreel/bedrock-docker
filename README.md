# Minecraft Bedrock DockerImage
Basic Minecraft Bedrock Server Docker Image

# Build
First Clone this repo

```git clone https://github.com/mythreel/bedrock-docker.git .```

Next lets build the actual image

```docker build -t minecraft_docker .```
# Usage
For Linux use:

```docker run -d --name=minecraft -p 19132:19132/udp -v /mnt/minecraft:/data minecraft_docker```

or

```docker run -d --name=minecraft -p 19132:19132/udp -v /mnt/minecraft:/data mythreel/bedrock-minecraft```

For Windows use:

```docker run -d --name=minecraft -p 19132:19132/udp -v "C:\Users\mythreel\Documents\minecraft":/data minecraft_docker```

or

```docker run -d --name=minecraft -p 19132:19132/udp -v "C:\Users\mythreel\Documents\minecraft":/data mythreel/bedrock-minecraft```