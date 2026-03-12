# Universal Skills

Universal Skills 是平台无关的技能定义，作为所有平台适配的上游源码。

## 目录结构

```
universal/
├── learning/           # 学习类技能
│   ├── learn-status/
│   ├── learn-goal-tracker/
│   ├── learn-goal-creator/
│   ├── learn-module-manager/
│   └── learn-tools/
├── productivity/       # 生产力类（未来）
└── development/        # 开发工具类（未来）
```

## Learning Skills

### learn-status

学习状态管理技能 - 查看、更新学习进度，显示共享机制库。

- **Version**: 1.0.0
- **Triggers**: 查看学习状态, 更新进度, 打勾, 查看进度
- [查看详情](learning/learn-status/)

### learn-goal-tracker

多目标管理技能 - 查看所有学习目标、切换学习目标、暂停/恢复学习目标、归档学习目标、聚焦视图显示。

- **Version**: 1.0.0
- **Triggers**: 查看学习目标, 切换学习目标, 暂停学习目标, 恢复学习目标, 归档学习目标, 当前学习目标, 学习目标状态
- [查看详情](learning/learn-goal-tracker/)

### learn-goal-creator

AI引导创建学习目标技能 - 交互式创建目标、分析知识源、生成课程结构。支持理论/实践/混合型目标。

- **Version**: 1.0.0
- **Triggers**: 创建学习目标, 新学习目标, 我要学
- [查看详情](learning/learn-goal-creator/)

### learn-module-manager

模块生命周期管理技能 - 开始学习、完成学习、重置模块、缓存检查。支持目标系统兼容。

- **Version**: 1.0.0
- **Triggers**: 开始学习模块, 完成学习, 重置模块
- [查看详情](learning/learn-module-manager/)

### learn-tools

学习工具集技能 - 书签管理、知识缓存、缓存更新提示、同步管理、模块管理。支持缓存变更检测和课程修改建议。

- **Version**: 1.0.0
- **Triggers**: 创建书签, 继续书签, 完成书签, 刷新缓存, 查看缓存, 新增模块
- [查看详情](learning/learn-tools/)

## 技能格式

每个技能目录包含：

```
skill-name/
├── SKILL.md         # 技能定义
├── VERSION          # 版本号
└── metadata.json    # 元数据
```

详见 [技能格式规范](../docs/skill-format.md)

## 转换到平台

Universal 技能可以转换到特定平台：

- **Claude Code**: 见 [claude-code/](../claude-code/)
- **OpenClaw**: 见 [openclaw/](../openclaw/)

详见 [平台转换指南](../docs/platform-guide.md)

## 版本管理

每个技能独立版本管理。查看各技能目录下的 VERSION 文件。

---

*Category: Universal | Platform-Agnostic Skills*
