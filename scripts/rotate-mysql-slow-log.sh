#!/bin/sh

# ログファイルローテート
sudo rm /var/log/mysql/mysql-slow.log

mysqladmin flush-logs