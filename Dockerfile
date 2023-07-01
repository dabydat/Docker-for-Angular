FROM node:latest
RUN apt-get update && apt-get install -y vim nano
EXPOSE 4200
USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
RUN npm install -g @angular/cli@8.0.6


