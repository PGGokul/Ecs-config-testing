# build environment
FROM node:14.16.1-alpine3.12

WORKDIR /opt/

RUN node --version && npm --version

# Production Environment

COPY package*.json /opt/

RUN npm install

COPY . /opt/

RUN npm run build

# Confirm the working directory

RUN ls -ltr 

EXPOSE 3000

CMD ["npm", "run", "start"]
