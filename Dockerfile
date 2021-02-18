# Base image
2 FROM alpine:latest
3 
4 # installes required packages for our script
5 RUN apk add --no-cache
10
11 # Copies your code file  repository to the filesystem
12 COPY action-run.yaml /action-run.yaml
13 
14 # change permission to execute the script and
15 RUN chmod +x /action-run.yaml
16 
17 # file to execute when the docker container starts up
18 ENTRYPOINT ["/action-run.yaml"]
