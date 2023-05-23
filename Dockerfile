# Build local monorepo image
# docker build --no-cache -t  flowise .
# Run image
# docker run -d -p 3000:3000 flowise
FROM node:18-alpine

WORKDIR /usr/src/packages

# Copy root package.json and lockfile
# COPY package.json ./
# COPY yarn.lock ./

# Copy components package.json
# COPY packages/components/package.json ./packages/components/package.json

# Copy ui package.json
# COPY packages/ui/package.json ./packages/ui/package.json

# Copy server package.json
# COPY packages/server/package.json ./packages/server/package.json

# RUN npm install -g npm@9.6.7

RUN npm install -g flowise

# Copy app source
# COPY . .

# RUN npm build

EXPOSE 3000

CMD [ "npx", "flowise", "start" ]
