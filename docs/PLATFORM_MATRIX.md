# Skills Platform Matrix

## Overview

### Universal Skills

| Skill | Version | Created | Last Updated |
|-------|---------|---------|--------------|
| learn-status | 1.0.0 | 2026-03-12 | - |
| learn-goal-tracker | 1.0.0 | 2026-03-12 | - |
| learn-goal-creator | 1.0.0 | 2026-03-12 | - |
| learn-module-manager | 1.0.0 | 2026-03-12 | - |
| learn-tools | 1.0.0 | 2026-03-12 | - |

### Platform Compatibility

| Skill | Universal | Claude Code | OpenClaw |
|-------|-----------|-------------|----------|
| learn-status | ✅ 1.0.0 | 🔄 Todo | ❌ N/A |
| learn-goal-tracker | ✅ 1.0.0 | 🔄 Todo | ❌ N/A |
| learn-goal-creator | ✅ 1.0.0 | 🔄 Todo | ❌ N/A |
| learn-module-manager | ✅ 1.0.0 | 🔄 Todo | ❌ N/A |
| learn-tools | ✅ 1.0.0 | 🔄 Todo | ❌ N/A |

### Claude Code Platform Details

当技能转换到 Claude Code 后，此表记录转换信息：

| Skill | Status | Claude Code Ver | Model Ver | Converted | Tested |
|-------|--------|-----------------|-----------|-----------|--------|
| learn-status | 🔄 Todo | - | - | - | - |
| learn-goal-tracker | 🔄 Todo | - | - | - | - |
| learn-goal-creator | 🔄 Todo | - | - | - | - |
| learn-module-manager | 🔄 Todo | - | - | - | - |
| learn-tools | 🔄 Todo | - | - | - | - |

**说明**：
- `Claude Code Ver`: 如 `4.6.0` - 适配时使用的 Claude Code 版本
- `Model Ver`: 如 `claude-sonnet-4-6` - 适配和测试时使用的模型
- `Converted`: 转换日期
- `Tested`: 测试日期

### OpenClaw Platform Details

| Skill | Status | OpenClaw Ver | Converted | Tested |
|-------|--------|--------------|-----------|--------|
| (暂无计划) | - | - | - | - |

## Legend

- ✅ Supported - 已支持并测试
- 🔄 Todo - 计划适配
- ❌ N/A - 不适用/不计划
- ⚠️ Deprecated - 已废弃
- 🧪 Experimental - 实验性支持

## Compatibility Guide

### Claude Code 用户

技能标明支持的 Claude Code 和模型版本，请确保你的环境匹配：

| Claude Code 版本 | 推荐模型 | 兼容性说明 |
|------------------|----------|------------|
| 4.6.0+ | claude-sonnet-4-6 | 完全兼容 |
| 4.5.x | claude-haiku-4-5 | 可能需要调整 |

### OpenClaw 用户

（待补充）

## Visualization

```
                    ┌─────────────────┐
                    │  Universal      │
                    │  (上游源码)      │
                    │  v1.0.0         │
                    └────────┬────────┘
                             │
         ┌───────────────────┼───────────────────┐
         │                   │                   │
         ▼                   ▼                   ▼
┌─────────────────┐ ┌─────────────────┐ ┌─────────────────┐
│ 5 Learning      │ │ (待转换)         │ │ (暂无计划)      │
│ Skills          │ │ Claude Code 4.6  │ │                 │
│ Platform-Agnost │ │ Sonnet 4.6      │ │                 │
└─────────────────┘ └─────────────────┘ └─────────────────┘
     Universal           Claude Code           OpenClaw
```

## Conversion Notes

当从 Universal 转换到特定平台时，需要记录：

1. **转换日期**
2. **使用的平台版本**
3. **使用的模型版本**
4. **必要的修改说明**
5. **测试结果**

示例：

```markdown
## learn-status → Claude Code

- **转换日期**: 2026-03-15
- **Claude Code 版本**: 4.6.0
- **模型**: claude-sonnet-4-6
- **修改**:
  - 调整 trigger 关键词格式
  - 添加 frontmatter 元数据
- **测试状态**: ✅ 通过
- **已知问题**: 无
```
