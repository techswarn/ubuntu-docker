FROM ubuntu:latest

ENV IMAGE_VERSION 1.0.0
WORKDIR /workspace
RUN apt-get update && \
    apt-get install -y figlet && \
    apt-get install -y chromium-browser

COPY run.sh run.sh
#ENTRYPOINT ["figlet", "Welcome"]
#CMD ["Swarn"]

ENTRYPOINT ["./run.sh"]