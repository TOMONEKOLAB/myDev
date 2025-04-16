#!/bin/bash

echo "🛑 GUI コンテナをシャットダウン中..."

# プロセスを順番に終了
pkill -f websockify
pkill -f x11vnc
pkill -f startlxde
pkill -f Xvfb

# 少し待ってから確認
sleep 1

# 念のため再確認と強制終了
pkill -9 -f websockify
pkill -9 -f x11vnc
pkill -9 -f startlxde
pkill -9 -f Xvfb

echo "✅ GUI 関連プロセスをすべて終了しました。"
