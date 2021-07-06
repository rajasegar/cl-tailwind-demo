#!/bin/sh
echo "Building Tailwind css for production env..."
NODE_ENV=production npx tailwindcss -i ./src/tailwind.css  -o ./static/css/main.css 
echo "Done."
