FROM node:10.19.0

# Create app directory
WORKDIR /app
ADD . /app/

RUN curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

RUN rm yarn.lock

RUN yarn
RUN yarn build

ENV HOST 0.0.0.0
EXPOSE 3000

# start command
CMD ["yarn", "start"]
