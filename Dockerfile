FROM node:22

WORKDIR /app

# Copy package files
COPY api/package*.json ./

# Install dependencies
RUN npm install --omit=dev

# Copy application code
COPY api/ ./

# Expose port
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]