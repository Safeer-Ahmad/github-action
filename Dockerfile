# Base image
FROM alpine:latest
 
# installes required packages for our script
RUN apk add --no-cache

# Copies your code file  repository to the filesystem
COPY action-run-bash.sh /action-run-bash.sh
 
# change permission to execute the script and
RUN chmod +x /action-run-bash.sh
 
# file to execute when the docker container starts up
ENTRYPOINT ["/action-run-bash.sh"]
