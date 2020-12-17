
## 事前条件
　・Dockerがインストールされてる事

## 【フロントエンド】
　・フロント、デザインを主に

## コンテナ
　・Nuxt
　・Nginx

## 初期設定
* 開発プロジェクトをgit cloneする
``` bash
　git clone -b develop ssh://git@gitlab.avelio.jp:60122/CYOFindFoodApp/nuxt.git 
```

* Dockerマシンを起動
　
```bash
　docker-machine start
```
　
　
* Dockerマシンを起動とIP確認
　
```bash
　docker-machine ls
```
　
> -　Dockerのマシン-defaultが起動しているか確認する。＊マークがある場合は正常起動。
> -　DockerのマシンのIP（URL）に記載されてるIPを確認。例：192.168.99.105


* Dockerコンテナをビルド、立ち上げる
``` bash
　docker-compose build && docker-compose up -d 
```

* Dockerコンテナが正常に起動したか確認
``` bash
　docker-compose ps 
```
（例）
```
         Name                        Command               State                        Ports
-------------------------------------------------------------------------------------------------------------------
nuxtnginxdocker_nginx_1   /bin/sh -c /usr/sbin/nginx ...   Up      0.0.0.0:441->441/tcp, 80/tcp, 0.0.0.0:81->81/tcp
nuxtnginxdocker_nuxt_1    docker-entrypoint.sh npm r ...   Up      0.0.0.0:3000->3000/tcp

```

* Docker Nuxtコンテナに入る
``` bash
(winpty) docker exec -it {Nuxtコンテナ名} bash
```
※Nuxtコンテナ名は「docker-compose ps」にて確認したコンテナ名です。
　こちらの例では「nuxtnginxdocker_nuxt_1」です。

* Docker Nuxtコンテナにて、Nuxtのビルドをする
``` bash
npm install
npm run build
npm run start 
```


* Webページを開く
・http
``` 
http://｛DcokerのIP｝:29000
```

・https
``` 
https://｛DcokerのIP｝:29443
```

* Nuxtのページもしくは開発ページが表示されたら、成功です！
