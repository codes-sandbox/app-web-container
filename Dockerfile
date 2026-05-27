# ベースとなるOS（軽量なNginxを使用）
FROM nginx:alpine

# ローカルにあるHTMLファイルをコンテナの中へコピー（今回は一旦コメントアウトしておく）
# COPY index.html /usr/share/nginx/html/index.html

# ポート80番を開放する
EXPOSE 80