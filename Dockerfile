#Base Image
FROM node:22-alpine

#set working directory
WORKDIR /app

#Set Environment to production
ENV NODE_ENV=production

#Install dependencies
COPY package*.json ./
RUN npm ci --only=production

#Copy app files 
COPY . .

#Export the app port 
EXPOSE 3001

#Command to run the app
CMD ["node", "src/index.js"]