#!/bin/bash
set -euo pipefail

REPO_URL="https://github.com/Larry-Labs/Cursor-rules/archive/main.tar.gz"
TARGET_DIR="${1:-.}"
RULES_DIR="$TARGET_DIR/.cursor/rules"

mkdir -p "$RULES_DIR"

echo "正在下载 Cursor Rules..."
curl -sL "$REPO_URL" | tar xz --strip-components=1 -C /tmp "Cursor-rules-main/rules"
cp /tmp/rules/*.mdc "$RULES_DIR/"
rm -rf /tmp/rules

echo "已安装到 $RULES_DIR/"
ls -la "$RULES_DIR/"
echo "完成！"
