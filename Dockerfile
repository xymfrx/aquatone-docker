FROM ubuntu:latest

ENV AQUATONE_VERSION=1.7.0

RUN apt-get update && apt-get install -y wget unzip

# chromium
RUN apt-get install -y chromium-browser

# aquatone
WORKDIR /opt/aquatone
RUN wget https://github.com/michenriksen/aquatone/releases/download/v${AQUATONE_VERSION}/aquatone_linux_amd64_${AQUATONE_VERSION}.zip && \
    unzip aquatone_linux_amd64_${AQUATONE_VERSION}.zip && \
    cp aquatone /

ENTRYPOINT ["/aquatone"]