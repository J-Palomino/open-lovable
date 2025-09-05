import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  // Enable standalone output for Docker deployment
  output: 'standalone',
  
  // Disable font optimization for better Docker compatibility
  optimizeFonts: false,
  
};

export default nextConfig;
