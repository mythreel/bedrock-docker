FROM debian:10
RUN apt-get update
RUN apt-get install -y software-properties-common curl nano zip unzip 
ADD ./start.sh /start.sh

# Fix all permissions
RUN    chmod +x /start.sh

WORKDIR /data
ENV TZ=america/Halifax
# 25565 is for minecraft
EXPOSE 19132/udp

# /data contains static files and database
VOLUME ["/data"]

# /start runs it.
# CMD    ["/start.sh"]

ENV LD_LIBRARY_PATH=.
CMD ./bedrock_server