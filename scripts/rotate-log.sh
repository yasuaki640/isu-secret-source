#!/bin/sh

# ログファイルローテート
sudo mv /var/log/nginx/access.log /var/log/nginx/access.log.`date +%Y%m%d-%H%M%S`

# nginxにログファイルを開き直すシグナルを送信
sudo nginx -s reopen