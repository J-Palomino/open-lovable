#!/bin/bash

# Simple script to set up and run Open Lovable with Docker

echo "🐳 Open Lovable Docker Setup"
echo "============================"

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null && ! docker compose version &> /dev/null; then
    echo "❌ Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

# Check if .env file exists
if [ ! -f .env ]; then
    echo "📝 Creating .env file from template..."
    cp .env.docker .env
    echo "✅ .env file created. Please edit it with your API keys:"
    echo "   - E2B_API_KEY (required)"
    echo "   - FIRECRAWL_API_KEY (required)"
    echo "   - At least one AI provider key (ANTHROPIC_API_KEY, OPENAI_API_KEY, etc.)"
    echo ""
    echo "Run this script again after setting up your environment variables."
    exit 0
fi

# Check if required environment variables are set
if ! grep -q "^E2B_API_KEY=.\+" .env || ! grep -q "^FIRECRAWL_API_KEY=.\+" .env; then
    echo "⚠️  Warning: Required API keys not found in .env file"
    echo "   Please make sure E2B_API_KEY and FIRECRAWL_API_KEY are set"
fi

echo "🚀 Starting Open Lovable with Docker Compose..."
docker-compose up --build

echo "✅ Open Lovable should be running at http://localhost:3000"