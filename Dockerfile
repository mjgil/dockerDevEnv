FROM node:argon

# Copy Files to /app directory
WORKDIR /app
COPY app/ .

# Move into react-slingshot dir
WORKDIR /app/react-slingshot
RUN npm install

# expose ports and start
EXPOSE 3000
CMD [ "npm", "start" ]