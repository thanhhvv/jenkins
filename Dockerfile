FROM node:18

# Cài các công cụ cần thiết
RUN apt-get update && apt-get install -y \
    git \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Cài firebase CLI
RUN npm install -g firebase-tools

# Set working directory
WORKDIR /app
