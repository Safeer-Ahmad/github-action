# Base image
FROM alpine:latest
 
# installes required packages for our script
RUN apk add --no-cache

# Copies your code file  repository to the filesystem
COPY action-run.yaml /action-run.yaml
 
# change permission to execute the script and
RUN chmod +x /action-run.yaml
 
# file to execute when the docker container starts up
ENTRYPOINT ["/action-run.yaml"]
