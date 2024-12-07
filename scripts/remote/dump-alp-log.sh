#!/bin/sh

echo '-mのパラメータは調整すること！！！'

alp json \ # nginx側でjsonログの設定が必要
--sort sum -r \
-m "/posts/[0-9]+,/@\w+,/image/\d+" \ # 正規表現でまとめる
-o count,method,uri,min,avg,max,sum \ # 出力順
< /var/log/nginx/access.log # ログファイルパス