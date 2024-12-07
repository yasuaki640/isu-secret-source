#!/bin/sh

sudo nginx -t # 検証

sudo systemctl reload nginx # 設定変更反映

# TODO: 被っているので後でなんとかする
# ログファイルローテート
sudo mv /var/log/nginx/access.log /var/log/nginx/access.log.`date +%Y%m%d-%H%M%S`

# nginxにログファイルを開き直すシグナルを送信
sudo nginx -s reopen