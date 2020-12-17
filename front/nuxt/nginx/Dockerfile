FROM nginx:1.15.8

# インクルード用のディレクトリ内を削除
RUN rm -f /etc/nginx/conf.d/*

# Nginxの設定ファイルをコンテナにコピー
ADD default.conf /etc/nginx/conf.d/webapp.conf

# ssl通信認証書
COPY /ssl/server.crt /etc/nginx/server.crt
COPY /ssl/server.key /etc/nginx/server.key
WORKDIR /etc/nginx
RUN chmod 400 /etc/nginx/server.crt
RUN chown root:root /etc/nginx/server.crt

# ビルド完了後にNginxを起動
CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf