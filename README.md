# My Skills

> 🧩 开源的 AI Skills 集合 - 支持多平台

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/your-username/my-skills)

## Overview

这是一个统一的 AI Skills 开源仓库，采用 "平台 + 功能" 双层分类架构。技能以平台无关的 Universal 格式定义，可转换适配到多个 AI 平台。

### 架构示意

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

## Quick Start

- **Universal Skills**: 平台无关的通用技能 → [universal/](universal/)
- **Claude Code**: 转换适配的 Claude Code 技能 → [claude-code/](claude-code/)
- **OpenClaw**: 转换适配的 OpenClaw 技能 → [openclaw/](openclaw/)

## Skills Overview

### Universal Skills (Learning)

| Skill | Version | Description |
|-------|---------|-------------|
| [learn-status](universal/learning/learn-status/) | 1.0.0 | 学习状态管理 |
| [learn-goal-tracker](universal/learning/learn-goal-tracker/) | 1.0.0 | 多目标管理 |
| [learn-goal-creator](universal/learning/learn-goal-creator/) | 1.0.0 | AI引导创建 |
| [learn-module-manager](universal/learning/learn-module-manager/) | 1.0.0 | 模块生命周期 |
| [learn-tools](universal/learning/learn-tools/) | 1.0.0 | 书签和缓存工具 |

## Platform Compatibility

详见 [Platform Matrix](docs/PLATFORM_MATRIX.md)

| Skill | Universal | Claude Code | OpenClaw |
|-------|-----------|-------------|----------|
| learn-status | ✅ 1.0.0 | 🔄 Todo | ❌ N/A |
| learn-goal-tracker | ✅ 1.0.0 | 🔄 Todo | ❌ N/A |
| learn-goal-creator | ✅ 1.0.0 | 🔄 Todo | ❌ N/A |
| learn-module-manager | ✅ 1.0.0 | 🔄 Todo | ❌ N/A |
| learn-tools | ✅ 1.0.0 | 🔄 Todo | ❌ N/A |

**Legend**:
- ✅ Supported - 已支持并测试
- 🔄 Todo - 计划适配
- ❌ N/A - 不适用/不计划

## Usage

### Using Universal Skills

1. Browse skills in [universal/](universal/)
2. Copy to your project
3. Adapt to your platform

### Converting to Platforms

See [Platform Guide](docs/platform-guide.md)

## Directory Structure

```
my-skills/
├── README.md                    # 项目首页
├── LICENSE                      # MIT License
├── CHANGELOG.md                 # 变更日志
├── .gitignore
│
├── universal/                   # 通用技能（平台无关）
│   ├── README.md
│   ├── learning/                # 学习类技能
│   │   ├── learn-status/
│   │   │   ├── SKILL.md         # 技能定义
│   │   │   ├── VERSION          # 版本号
│   │   │   └── metadata.json    # 元数据
│   │   ├── learn-goal-tracker/
│   │   ├── learn-goal-creator/
│   │   ├── learn-module-manager/
│   │   └── learn-tools/
│   │
│   ├── productivity/            # 生产力类（未来）
│   └── development/             # 开发工具类（未来）
│
├── claude-code/                 # Claude Code 平台专用
│   ├── README.md
│   └── learning/                # 从 universal 转换或直接创建
│
├── openclaw/                    # OpenClaw 平台专用
│   ├── README.md
│   └── learning/                # 从 universal 转换或直接创建
│
├── docs/                        # 文档
│   ├── skill-format.md          # 技能格式规范
│   ├── platform-guide.md        # 平台转换指南
│   ├── contributing.md          # 贡献指南
│   └── PLATFORM_MATRIX.md       # 技能-平台关系图谱
│
└── scripts/                     # 工具脚本
    └── list-skills.sh           # 列出所有技能和版本
```

## Contributing

欢迎贡献！请查看 [贡献指南](docs/contributing.md)

## License

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件

## Versioning

每个技能独立版本管理。详见各技能目录下的 VERSION 文件。

---

*Created: 2026-03-12 | Version: 1.0.0*
