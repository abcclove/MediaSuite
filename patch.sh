#!/bin/bash
# MediaSuite 补丁脚本模板
# PATCH_VERSION 必须和脚本里的 VERSION 对应

PATCH_VERSION="v2.0_Fixed_patch1"
SCRIPT_PATH="$(realpath "$0")"
BACKUP_PATH="${SCRIPT_PATH}.bak.$(date +%Y%m%d%H%M%S)"

# 1. 备份原脚本
cp "${SCRIPT_PATH}" "${BACKUP_PATH}"
echo "✅ 已备份原脚本到：${BACKUP_PATH}"

# 2. 在这里写你的补丁逻辑，例如：
# 修复配置文件路径
sed -i 's|/volume2/docker|/volume1/docker|g' "${SCRIPT_PATH}"

# 3. 标记补丁已应用
echo -e "\n# 补丁已应用：${PATCH_VERSION}" >> "${SCRIPT_PATH}"

echo "✅ 补丁 ${PATCH_VERSION} 应用成功！请重新运行脚本。"
exit 0
