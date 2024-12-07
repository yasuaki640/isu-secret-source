#!/bin/sh

sudo nginx -t # 検証

sudo systemctl reload nginx # 設定変更反映
