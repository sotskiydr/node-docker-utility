# use node 22.14.0 LTS
FROM node:22.14.0

# set working directory
WORKDIR /src

# copy package.json and package-lock.json
COPY package*.json ./

# install dependencies 
RUN npm ci

# copy all files
COPY . .

# build the project
RUN npm run build

# check the files in the dist folder
RUN ls -la dist

# expose the port
CMD ["node", "dist/app.js"]
