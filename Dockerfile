
FROM node

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz


WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3000
CMD npm start


# # Expose the port that your application listens on
# EXPOSE 3001

# # Specify a command to start your application
# CMD ["npm", "start"]
# ENTRYPOINT [ "npm", "start" ]