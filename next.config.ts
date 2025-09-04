import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  // Enable standalone output for Docker deployment
  output: 'standalone',
  
  // Disable font optimization for better Docker compatibility
  optimizeFonts: false,
  
  // Configure environment variables that should be available at runtime
  env: {
    E2B_API_KEY: process.env.E2B_API_KEY,
    FIRECRAWL_API_KEY: process.env.FIRECRAWL_API_KEY,
    ANTHROPIC_API_KEY: process.env.ANTHROPIC_API_KEY,
    OPENAI_API_KEY: process.env.OPENAI_API_KEY,
    GEMINI_API_KEY: process.env.GEMINI_API_KEY,
    GROQ_API_KEY: process.env.GROQ_API_KEY,
  },
};

export default nextConfig;
