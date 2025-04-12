FROM ubuntu:20.04

USER root

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get update && apt-get install -y python3.9
# RUN apt-get update && apt-get -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::"--force-confold" install -y sudo vim curl python3-pip
RUN apt-get update && apt-get install -y sudo vim curl python3-pip

WORKDIR /project

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY src/ /project

# RUN ["chmod", "+x", "./entrypoint"]
# CMD ["./entrypoint"]