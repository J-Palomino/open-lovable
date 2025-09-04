# Open Lovable

Chat with AI to build React apps instantly. An example app made by the [Firecrawl](https://firecrawl.dev/?ref=open-lovable-github) team. For a complete cloud solution, check out [Lovable.dev ❤️](https://lovable.dev/).

<img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExbmZtaHFleGRsMTNlaWNydGdianI4NGQ4dHhyZjB0d2VkcjRyeXBucCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/ZFVLWMa6dVskQX0qu1/giphy.gif" alt="Open Lovable Demo" width="100%"/>



## Setup

1. **Clone & Install**
```bash
git clone https://github.com/mendableai/open-lovable.git
cd open-lovable
npm install
```

2. **Add `.env.local`**
```env
# Required
E2B_API_KEY=your_e2b_api_key  # Get from https://e2b.dev (Sandboxes)
FIRECRAWL_API_KEY=your_firecrawl_api_key  # Get from https://firecrawl.dev (Web scraping)

# Optional (need at least one AI provider)
ANTHROPIC_API_KEY=your_anthropic_api_key  # Get from https://console.anthropic.com
OPENAI_API_KEY=your_openai_api_key  # Get from https://platform.openai.com (GPT-5)
GEMINI_API_KEY=your_gemini_api_key  # Get from https://aistudio.google.com/app/apikey
GROQ_API_KEY=your_groq_api_key  # Get from https://console.groq.com (Fast inference - Kimi K2 recommended)
```

3. **Run**
```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000)  

## Docker Setup

You can also run Open Lovable using Docker for easier deployment and containerization.

### Prerequisites
- Docker and Docker Compose installed on your system

### Quick Start with Docker

1. **Clone the repository**
```bash
git clone https://github.com/mendableai/open-lovable.git
cd open-lovable
```

2. **Set up environment variables**
```bash
cp .env.docker .env
# Edit .env file with your API keys
```

3. **Build and run with Docker Compose**
```bash
docker-compose up --build
```

The application will be available at [http://localhost:3000](http://localhost:3000)

### Manual Docker Build

If you prefer to build the Docker image manually:

```bash
# Build the image
docker build -t open-lovable .

# Run the container
docker run -p 3000:3000 \
  -e E2B_API_KEY=your_e2b_api_key \
  -e FIRECRAWL_API_KEY=your_firecrawl_api_key \
  -e ANTHROPIC_API_KEY=your_anthropic_api_key \
  open-lovable
```

### Docker Environment Variables

The Docker setup supports the same environment variables as the local setup:

- **Required**: `E2B_API_KEY`, `FIRECRAWL_API_KEY`
- **Optional** (need at least one): `ANTHROPIC_API_KEY`, `OPENAI_API_KEY`, `GEMINI_API_KEY`, `GROQ_API_KEY`

### CI/CD with GitHub Actions

The repository includes a GitHub Actions workflow that automatically:
- Builds Docker images on every push to any branch
- Tags images with the lowercase branch name
- Pushes images to GitHub Container Registry (GHCR)

Images are available at: `ghcr.io/your-username/open-lovable:branch-name`  

## License

MIT
