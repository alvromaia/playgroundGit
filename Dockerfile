FROM node:12

RUN apt-get update

RUN apt-get -y install tofrodos

RUN mkdir globo
WORKDIR /globo

RUN mkdir server

COPY . /globo
RUN mv code.ttx /globo/server/code.ttx


RUN cd server && npm i

EXPOSE 3000

# ENTRYPOINT ["bash", "-c", "echo 'run your commands'"]
