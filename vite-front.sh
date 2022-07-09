#!/bin/bash
echo '清理代码'
git reset --hard origin/main
git clean -f
echo '拉取最新代码'
git pull origin main

echo "打包最新代码"
npm run build
echo '开始构建镜像'
docker build -t vite-frontTest:1.0 .
echo '删除旧容器'
docker stop vite-frontTest-container
docker rm vite-frontTest-container
echo '启动新容器'
docker container run -p 3001:80 -d --name vite-frontTest-container vite-frontTest:1.0