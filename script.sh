#!/bin/bash
set -e

echo "1. Khoi chay container Nginx..."
docker run -d -p 8080:80 --name my-web nginx:alpine

echo "2. Kiem tra trang web bang curl..."
curl http://localhost:8080

echo "3. Don dep container..."
docker stop my-web && docker rm my-web

echo "Hoan thanh!"
