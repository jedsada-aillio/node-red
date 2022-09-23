FROM nodered/node-red
 
COPY settings.js /data/
USER root
RUN chown -R node-red:root /data
RUN npm install node-red-node-smooth
RUN npm install --no-fund --no-update-notifier --save node-red-admin
USER node-red