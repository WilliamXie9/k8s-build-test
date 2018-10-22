FROM nginx:1.15.0-alpine

RUN mkdir -p /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

ADD ./dist /usr/share/nginx/html
ADD ./docker/default.conf /etc/nginx/conf.d/default.conf


EXPOSE 80

#RUN cd lib/database && ../../node_modules/.bin/sequelize  db:migrate --config=../../config/sequelize_config.js
#CMD ["nginx"]
