FROM ubuntu:latest
MAINTAINER lingojuyogesh.kumar@ltts.com
RUN apt-get update && apt-get install -y \
	gcc 
RUN echo "Docker is ready for gcc Compilation" 
