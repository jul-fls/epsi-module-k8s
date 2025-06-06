#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Step 1: Build PHP image
echo "🔨 Building PHP image..."
docker build -t gestion-produits-image ./php

# Step 2: Start containers using Docker Compose
echo "🚀 Starting Docker Compose..."
docker-compose up -d