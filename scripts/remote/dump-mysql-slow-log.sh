#!/bin/sh

# pt-query-digestがうまく動かなければ、コメントアウト
#sudo mysqldumpslow /var/log/mysql/mysql-slow.log

# タイムスタンプを生成
timestamp=$(date +%Y%m%d-%H%M%S)-$$

# 出力先ディレクトリを作成
mkdir -p "$HOME/log/mysql-slow"

# pt-query-digest を実行し、ログを出力
sudo pt-query-digest /var/log/mysql/mysql-slow.log | sudo tee "$HOME/log/mysql-slow/pt-query.log.$timestamp" > /dev/null
