FROM nodered/node-red

COPY package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

COPY settings.js /data/settings.js

USER root
# WORKDIR /usr/src/node-red
RUN npm install node-red-node-smooth
RUN npm install -g node-red-admin
USER node-red