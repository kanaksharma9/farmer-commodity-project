FROM node:18
WORKDIR /app
# Only copy package.json so Docker ignores the Windows lockfile
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]