# Cursor Rules

通用 Cursor AI 编码规则集，适用于任何项目。

## 规则列表

| 文件 | 说明 | 生效方式 |
|------|------|---------|
| `general.mdc` | 核心原则、语言、交互、效率规范 | 始终生效 |
| `coding.mdc` | RIPER 开发流程、编码质量、Git 提交、Python 环境 | 始终生效 |
| `ask-question.mdc` | 每轮回复必须调用 AskQuestion 工具结尾 | 始终生效 |
| `testing.mdc` | 测试编写规范 | 按需启用 |
| `docs.mdc` | 文档编写规范（含配图/Mermaid） | 匹配文档文件时生效 |
| `feedback.mdc` | ~~interactive_feedback 规则~~ | 已禁用（被 `ask-question.mdc` 替代） |

## 导入方式

1. 打开 Cursor 设置：**Settings** → **Rules, Skills, Subagents** → **Rules**
2. 点击 **+ New**
3. 选择 **Add from GitHub**
4. 输入地址：`https://github.com/Larry-Labs/Cursor-rules.git`

## 自定义

导入后可在项目的 `.cursor/rules/` 下编辑规则文件：

- 修改 `general.mdc` 中的语言偏好
- 在 `coding.mdc` 中调整编码标准或开发流程
- 启用/禁用 `testing.mdc` 或 `docs.mdc`（修改 `alwaysApply` 字段）
- 添加新的 `.mdc` 文件用于项目特定规则
