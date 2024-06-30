
FROM node


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