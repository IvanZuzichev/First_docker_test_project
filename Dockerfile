FROM node:18-alpine

WORKDIR /app/frontend
COPY frontend/package*.json ./
RUN npm install

WORKDIR /app/api
COPY api/package*.json ./
RUN npm install

WORKDIR /app
COPY frontend .
COPY api .

ENV PORT 5000

WORKDIR /app/api
CMD ["npm", "run", "start"]