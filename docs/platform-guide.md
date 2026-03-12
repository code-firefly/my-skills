# Platform Conversion Guide

本指南说明如何将 Universal 格式的技能转换到特定平台。

## Overview

```
Universal Skill
        │
        │ 1. Extract core logic
        │ 2. Adapt platform format
        │ 3. Add platform features
        │ 4. Test
        ▼
Platform-Specific Skill
```

## Claude Code Conversion

### Step 1: 分析 Universal Skill

阅读技能定义，理解核心功能：

```bash
cat universal/learning/learn-status/SKILL.md
cat universal/learning/learn-status/metadata.json
```

### Step 2: 创建 Claude Code 版本

```bash
# 创建目标目录
mkdir -p claude-code/learning/learn-status

# 复制基础文件
cp universal/learning/learn-status/SKILL.md claude-code/learning/learn-status/
```

### Step 3: 添加 Frontmatter

Claude Code 需要特定的 YAML frontmatter：

```yaml
---
name: learn-status
description: 学习状态管理技能 - 查看、更新学习进度
version: 1.0.0
model: claude-sonnet-4-6
min_claude_code_version: 4.6.0
triggers:
  - 查看学习状态
  - 更新进度
  - 打勾
  - 查看进度
categories:
  - learning
  - productivity
author: My Skills Contributors
---

# Learn Status
...
```

### Step 4: 调整触发关键词

Claude Code 使用 `triggers` 数组，从 Universal 格式转换：

**Universal 格式**:
```markdown
## Trigger Keywords
- 查看学习状态
- 更新进度
```

**Claude Code 格式**:
```yaml
triggers:
  - 查看学习状态
  - 更新进度
```

### Step 5: 测试

```bash
# 在 Claude Code 环境中测试
# 1. 将技能复制到项目的 .claude/skills/ 目录
# 2. 触发技能验证功能
# 3. 检查输出是否符合预期
```

### Step 6: 更新元数据

更新 `universal/learning/learn-status/metadata.json`:

```json
{
  "platforms": {
    "claude-code": {
      "status": "supported",
      "claude_code_version": "4.6.0",
      "model_version": "claude-sonnet-4-6",
      "tested_at": "2026-03-15",
      "notes": "已适配 trigger 格式，测试通过"
    }
  }
}
```

### Step 7: 更新 PLATFORM_MATRIX.md

记录转换信息：

```markdown
| learn-status | ✅ Supported | 4.6.0 | claude-sonnet-4-6 | 2026-03-15 | 2026-03-15 |
```

## OpenClaw Conversion

（待补充）

## Common Adaptations

### Trigger 格式对比

| Platform | 格式 | 示例 |
|----------|------|------|
| Universal | Markdown 列表 | `- 关键词` |
| Claude Code | YAML 数组 | `triggers: [关键词]` |
| OpenClaw | TBD | TBD |

### 版本号同步

当 Universal 技能更新时：

1. 更新 Universal 版本号
2. 评估是否需要更新平台版本
3. 同步更新 metadata.json
4. 更新 CHANGELOG.md

## Validation Checklist

### Claude Code

- [ ] Frontmatter 完整且格式正确
- [ ] triggers 数组包含所有关键词
- [ ] 指定正确的 model 版本
- [ ] 技能功能正常工作
- [ ] metadata.json 已更新
- [ ] PLATFORM_MATRIX.md 已更新

### OpenClaw

- [ ] （待补充）

## Troubleshooting

### 技能无法触发

1. 检查 triggers 关键词是否正确
2. 检查 frontmatter 格式是否正确
3. 检查技能文件路径是否正确

### 功能异常

1. 检查平台特定语法是否正确
2. 检查模型版本兼容性
3. 查看日志输出

---

*Last Updated: 2026-03-12*
