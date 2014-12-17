dockerとfigを使って、norikra、elasticsearch, kibana4, Basic認証用のnginx, ログ収集用fluentdをまとめて起動します。
最初に`fig up`を実行した時にDockerfileのビルドを行います。
以降Dockerfileに変更を加えた場合`fig build`でdocker imageを更新します。

## 必要な物
- docker
- fig

## コンテナ構成
- Elasticsearch  
- Kibana4
- fluentd  
- Nginx  
- Norikra

## コマンド
```bash
cd fig/log_collector

# 起動
fig up

# バックグラウンド起動
fig up -d

# Dockerfileの再ビルド
fig build
```

## Basic認証
HTTPのアクセスにはBasic認証(nginx)が必要です。
ID，PASSは`nginx_conf/htpasswd`に追加してください。
