FROM node:18-alpine

EXPOSE 5000
WORKDIR /app
COPY server .
RUN npm install
RUN cd client && npm install && npm run build
CMD ["npm", "run", "serve"]
