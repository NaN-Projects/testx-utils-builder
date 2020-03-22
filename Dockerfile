FROM node:12-alpine

# for node-gyp
RUN apk --no-cache add make gcc g++ python

# Required for semantic release
RUN apk --no-cache add git

# To allow using ssh-keyscan for semantic release
RUN apk --no-cache add openssh

# Required to install NODE_SASS
ENV NODE_SASS_PLATFORM=alpine
