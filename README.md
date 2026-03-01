# Cursor Rules

通用 Cursor AI 编码规则集，适用于任何项目。

## 规则列表

| 文件 | 说明 | 生效方式 |
|------|------|---------|
| `general.mdc` | 核心原则、语言、交互、效率规范 | 始终生效 |
| `coding.mdc` | RIPER 开发流程、编码质量、Git 提交、Python 环境 | 始终生效 |
| `testing.mdc` | 测试编写规范 | 按需启用 |
| `docs.mdc` | 文档编写规范（含配图/Mermaid） | 匹配文档文件时生效 |

## 快速安装

### 方式一：一键安装（推荐）

在你的项目根目录下执行：

```bash
curl -sL https://raw.githubusercontent.com/Larry-Labs/Cursor-rules/main/install.sh | bash
```

或指定目标目录：

```bash
curl -sL https://raw.githubusercontent.com/Larry-Labs/Cursor-rules/main/install.sh | bash -s /path/to/your/project
```

### 方式二：手动复制

```bash
git clone --depth 1 https://github.com/Larry-Labs/Cursor-rules.git /tmp/cursor-rules
mkdir -p .cursor/rules
cp /tmp/cursor-rules/rules/*.mdc .cursor/rules/
rm -rf /tmp/cursor-rules
```

### 方式三：直接下载

```bash
mkdir -p .cursor/rules
curl -sL https://github.com/Larry-Labs/Cursor-rules/archive/main.tar.gz \
  | tar xz --strip-components=2 -C .cursor/rules "Cursor-rules-main/rules"
```

## 自定义

安装后可根据项目需要编辑 `.cursor/rules/` 下的文件：

- 修改 `general.mdc` 中的语言偏好
- 在 `coding.mdc` 中调整编码标准
- 启用/禁用 `testing.mdc` 或 `docs.mdc`（修改 `alwaysApply` 字段）
- 添加新的 `.mdc` 文件用于项目特定规则

## 目录结构

```
.
├── rules/              # 规则源文件
│   ├── general.mdc     # 通用基础规范
│   ├── coding.mdc      # 编码与开发流程
│   ├── testing.mdc     # 测试规范
│   └── docs.mdc        # 文档规范
├── .cursor/rules/      # Cursor 运行时加载的规则（本仓库自用）
├── install.sh          # 一键安装脚本
└── README.md
```
