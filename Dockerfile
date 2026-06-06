# 1. ビルドステージ
FROM node:18 AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# 2. 実行ステージ（本番用イメージ）
FROM nginx:alpine
# ビルドステージから必要な成果物だけをコピー（軽量化の肝）
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
