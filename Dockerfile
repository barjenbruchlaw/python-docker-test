FROM python:3.10.10-bullseye
COPY . .
RUN mkdir /var/dir1
WORKDIR /python-docker-test/dir1
COPY . var/dir1
RUN mkdir /var/dir2
WORKDIR /python-docker-test/dir2
COPY . var/dir2
CMD python3 main.py