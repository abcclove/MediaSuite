#!/bin/bash
set -euo pipefail

# 定义文件地址
BIN_URL="https://raw.githubusercontent.com/abcclove/MediaSuite/main/media.bin"
LOCAL_BIN="media.bin"

echo "====================================="
echo "  MediaSuite 一键启动工具"
echo "====================================="
echo "正在拉取最新版本..."

# 下载二进制文件
curl -sL "$BIN_URL" -o "$LOCAL_BIN"

# 赋予执行权限
chmod +x "$LOCAL_BIN"

echo "✅ 拉取完成，正在启动..."
echo "-------------------------------------"

# 运行
./"$LOCAL_BIN"
