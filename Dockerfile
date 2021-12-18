#FROM debian:10
FROM oraclelinux:8.5
RUN yum update -y
RUN yum install -y libnsl tmux nano

WORKDIR /data
ENV TZ=america/Halifax
# 19132 is for minecraft bedrock
EXPOSE 19132/udp

# /data contains static files and database
VOLUME ["/data"]

ENV LD_LIBRARY_PATH=.
CMD ./bedrock_server