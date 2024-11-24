#!/bin/sh

# ログファイルローテート
sudo mv /var/log/mysql/mysql-slow.log /var/log/mysql/mysql-slow.log.`date +%Y%m%d-%H%M%S`

sudo mysqladmin flush-logs