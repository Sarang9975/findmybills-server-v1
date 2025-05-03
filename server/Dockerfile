FROM node:18-slim

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy application files
COPY . .

# Create volume directory for uploads
RUN mkdir -p /data
RUN mkdir -p /app/uploads
RUN chmod -R 777 /app/uploads

ENV NODE_ENV=production
ENV PORT=8080

# Start the application
CMD ["node", "index.js"] 