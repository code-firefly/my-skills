# Claude Code Skills

Claude Code 平台专用技能，从 Universal 转换或直接创建。

## 状态

当前状态：🔄 **待转换**

## 转换计划

| Universal Skill | Status | Target Version |
|----------------|--------|----------------|
| learn-status | 🔄 Todo | 4.6.0 |
| learn-goal-tracker | 🔄 Todo | 4.6.0 |
| learn-goal-creator | 🔄 Todo | 4.6.0 |
| learn-module-manager | 🔄 Todo | 4.6.0 |
| learn-tools | 🔄 Todo | 4.6.0 |

## Claude Code 技能格式

Claude Code 需要特定的 YAML frontmatter：

```yaml
---
name: skill-name
description: 技能描述
version: 1.0.0
model: claude-sonnet-4-6
min_claude_code_version: 4.6.0
triggers:
  - 关键词1
  - 关键词2
categories:
  - learning
author: My Skills Contributors
---
```

## 转换步骤

详见 [平台转换指南](../docs/platform-guide.md)

## 兼容性

| Claude Code 版本 | 推荐模型 | 兼容性 |
|------------------|----------|--------|
| 4.6.0+ | claude-sonnet-4-6 | ✅ 完全兼容 |
| 4.5.x | claude-haiku-4-5 | ⚠️ 可能需要调整 |

---

*Platform: Claude Code | Target: skillsmp.com*
