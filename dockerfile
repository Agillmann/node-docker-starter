# ---- Node container ----

FROM node
WORKDIR /app
RUN npm init -y
RUN npm i pm2 -g
RUN npm i express mongoose cookie-parser morgan pug
COPY app . 
VOLUME /app
CMD ["pm2-runtime", "./bin/www"]