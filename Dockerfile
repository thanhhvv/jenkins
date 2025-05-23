FROM node:18

# Cài các công cụ cần thiết
RUN apt-get update && apt-get install -y \
    git \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Cài firebase CLI
RUN apt-get update && apt-get install python3-pip  -y 
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g firebase-tools

# Set working directory
WORKDIR /app
