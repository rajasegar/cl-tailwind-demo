#!/bin/sh
echo "Building Tailwind css..."
npx tailwindcss -i ./src/tailwind.css  -o ./static/css/main.css 
echo "Done."
