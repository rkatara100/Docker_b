# Step 1: Base image
FROM node:14

# Step 2: Working directory
WORKDIR /usr/src/app

# Step 3: Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Step 4: Copy application code
COPY . .

# Step 5: Expose port and run the app
EXPOSE 3000
CMD ["node", "app.js"]
