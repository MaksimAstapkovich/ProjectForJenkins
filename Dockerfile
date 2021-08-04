FROM docker

COPY ./Dockerfile1 /home/Dockerfile
RUN mkdir /home/flask-examples/
COPY ./flask-examples/* /home/flask-examples/
