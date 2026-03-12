---
name: skill-manager
description: 技能管家 - 管理 my-skills 仓库中的所有 AI Skills，包括创建、优化、适配和发布技能到 ClawHub。当用户说"创建一个skill"、"优化这个skill"、"发布到clawHub"、"搜索技能"时触发此技能。
---

# Skill Manager

> **Skills 仓库的核心管理工具** - 创建、优化、适配、发布 AI Skills

## 功能范围

### 🆕 创建新技能
- 使用 `skill-creator` 或 `skill-scaffold` 创建技能框架
- 生成符合 Universal Skill Format 的文件结构
- 自动创建 SKILL.md、VERSION、metadata.json

### 🔧 优化现有技能
- 分析技能的结构、完整性、可读性
- 提出优化方案供用户确认
- 实施优化并更新版本号

### 🔄 平台适配（Universal → OpenClaw）
- 将 Universal Skill 转换为 OpenClaw 格式
- 调整 SKILL.md frontmatter 和触发关键词
- 更新 metadata.json 平台状态
- 同步 PLATFORM_MATRIX.md

### 🔍 ClawHub 集成
- `clawhub search <query>` - 搜索技能
- `clawhub install <slug>` - 安装技能
- `clawhub publish <path>` - 发布技能
- `clawhub update <slug>` - 更新技能
- `clawhub explore` - 浏览最新技能

### 📝 版本管理
- 维护 VERSION 文件（遵循 Semantic Versioning）
- 更新 metadata.json 中的版本号
- 记录变更到 CHANGELOG.md

---

## 触发关键词

### 创建技能
- "创建一个 skill" / "新建 skill" / "帮我创建技能"
- "创建 xxx skill" / "做一个关于 xxx 的技能"
- "创建新技能" / "添加技能"

### 优化技能
- "优化这个 skill" / "优化 xxx skill"
- "改进这个技能" / "提升技能质量"
- "检查这个技能"

### 平台适配
- "适配到 OpenClaw" / "生成 OpenClaw 版本"
- "转换平台" / "适配平台"

### ClawHub 操作
- "发布到 ClawHub" / "上传技能"
- "搜索技能" / "找技能" / "ClawHub 搜索"
- "从 ClawHub 安装" / "安装 xxx 技能"

### 通用查询
- "查看所有技能" / "列出技能" / "技能列表"
- "技能状态" / "仓库状态"

---

## 创建新技能流程

### 步骤 1: 需求分析
向用户确认：
1. **技能名称** (skill-name)
2. **技能描述** (简要说明功能)
3. **技能分类** (learning/productivity/development/其他)
4. **平台目标** (仅 Universal / 需要 OpenClaw 适配)
5. **参考技能** (可选，可参考现有技能)

### 步骤 2: 选择创建工具
- **skill-creator**: 适合创建功能完整的技能，有优化和评估能力
- **skill-scaffold**: 适合快速创建技能框架，支持多平台

根据需求选择合适的工具。

### 步骤 3: 生成技能文件
```bash
# 使用 skill-creator
skill-creator create "skill-name" --category "learning" --description "描述"

# 或使用 skill-scaffold
skill-scaffold create "skill-name" --platforms universal,openclaw
```

### 步骤 4: 完善技能内容
编辑生成的 SKILL.md，确保：
- ✅ Frontmatter 完整（name, description）
- ✅ 功能范围清晰
- ✅ 触发关键词准确
- ✅ 行为逻辑详细
- ✅ 使用示例丰富

### 步骤 5: 生成辅助文件
- 创建 `VERSION` 文件（内容: `1.0.0`）
- 创建 `metadata.json` 文件

### 步骤 6: 验证规范
检查是否符合 [Universal Skill Format](docs/skill-format.md)

---

## 优化现有技能流程

### 步骤 1: 分析技能
读取目标技能的所有文件：
- SKILL.md
- VERSION
- metadata.json
- 其他辅助文件（如果有）

### 步骤 2: 质量检查
检查维度：
1. **结构完整性** - 是否缺少必要文件
2. **文档质量** - SKILL.md 是否清晰完整
3. **版本一致性** - VERSION 和 metadata.json 是否一致
4. **格式规范** - 是否符合 Universal Skill Format
5. **可读性** - 描述是否清晰，示例是否充分
6. **平台适配** - PLATFORM_MATRIX.md 状态是否准确

### 步骤 3: 生成优化方案
为用户列出发现的问题和建议的优化措施，例如：

```
╔═══════════════════════════════════════════════════════╗
║         learn-status - 优化分析报告                    ║
╠═══════════════════════════════════════════════════════╣
║ 🔍 发现的问题:                                         ║
║   1. VERSION 文件版本号与 metadata.json 不一致        ║
║   2. SKILL.md 缺少使用示例章节                        ║
║   3. 部分触发关键词不够精确                           ║
╠═══════════════════════════════════════════════════════╣
║ 💡 建议的优化:                                         ║
║   1. 统一版本号为 v4.1.0                              ║
║   2. 添加 Examples 章节，包含 3 个使用场景             ║
║   3. 细化触发关键词，增加别名                         ║
╠═══════════════════════════════════════════════════════╣
║ 📦 版本变更:                                           ║
║   当前版本: v4.0.0                                    ║
║   建议版本: v4.1.0 (MINOR - 功能新增)                 ║
╚═══════════════════════════════════════════════════════╝
```

### 步骤 4: 用户确认
等待用户回复确认或补充优化方案。

### 步骤 5: 实施优化
根据用户确认的方案执行优化：
1. 修改 SKILL.md
2. 更新 VERSION
3. 更新 metadata.json
4. 更新 CHANGELOG.md

### 步骤 6: 验证优化结果
再次检查优化后的技能，确保所有问题已解决。

---

## 平台适配流程（Universal → OpenClaw）

### 步骤 1: 读取 Universal Skill
读取 Universal 格式的技能文件：
- `universal/<category>/<skill-name>/SKILL.md`
- `universal/<category>/<skill-name>/VERSION`
- `universal/<category>/<skill-name>/metadata.json`

### 步骤 2: 分析平台适配要求
检查 metadata.json 中的平台状态：
```json
{
  "platforms": {
    "openclaw": {
      "status": "todo"
    }
  }
}
```

### 步骤 3: 转换 SKILL.md
Universal 格式 → OpenClaw 格式的关键调整：

#### Frontmatter 调整
```yaml
# Universal (平台无关)
---
name: skill-name
description: 技能描述
---

# OpenClaw
---
name: skill-name
description: 技能描述（保留）
---

# OpenClaw 特定要求
- 使用标准的 trigger 格式
- 符合 OpenClaw skills 规范
```

### 步骤 4: 创建 OpenClaw 目录结构
```bash
openclaw/<category>/<skill-name>/
├── SKILL.md        # 转换后的 OpenClaw 格式
├── VERSION         # 版本号（与 Universal 同步）
└── metadata.json   # 包含 OpenClaw 平台状态
```

### 步骤 5: 更新 metadata.json
```json
{
  "name": "skill-name",
  "version": "1.0.0",
  "platforms": {
    "universal": {
      "status": "supported"
    },
    "openclaw": {
      "status": "supported",
      "openclaw_version": "2026.3.8",
      "tested_at": "2026-03-12",
      "notes": "从 Universal 转换，保持功能一致"
    }
  }
}
```

### 步骤 6: 更新 PLATFORM_MATRIX.md
```markdown
| Skill | Universal | Claude Code | OpenClaw |
|-------|-----------|-------------|----------|
| skill-name | ✅ 1.0.0 | ❌ N/A | ✅ 1.0.0 |
```

### 步骤 7: 验证适配结果
确保 OpenClaw 版本技能：
- ✅ 符合 OpenClaw SKILL.md 规范
- ✅ 触发关键词准确
- ✅ 功能与 Universal 版本一致
- ✅ 版本号同步

---

## ClawHub 操作流程

### 搜索技能
```bash
clawhub search "learning" --limit 10
clawhub search "status management"
```

### 安装技能
```bash
# 安装到默认 skills 目录
clawhub install learn-status

# 安装到指定目录
clawhub install learn-status --workdir ~/projects/my-skills --dir skills
```

### 发布技能
```bash
# 从技能目录发布
clawhub publish universal/learning/learn-status

# 或使用 skill 目录的绝对路径
clawhub publish ~/projects/my-skills/universal/learning/learn-status
```

### 更新技能
```bash
# 更新指定技能
clawhub update learn-status

# 更新所有已安装技能
clawhub update
```

### 浏览最新技能
```bash
clawhub explore --limit 20
clawhub explore --category learning
```

---

## 文件操作规范

### VERSION 文件更新
```bash
# 读取当前版本
cat universal/learning/learn-status/VERSION

# 根据变更类型更新版本号
# MAJOR: 不兼容的 API 变更
# MINOR: 向后兼容的功能新增
# PATCH: 向后兼容的问题修复

# 示例: v4.0.0 -> v4.1.0 (MINOR)
echo "4.1.0" > universal/learning/learn-status/VERSION
```

### metadata.json 更新
使用 `jq` 或手动编辑：
```bash
jq '.version = "4.1.0"' metadata.json > temp.json
mv temp.json metadata.json
```

### CHANGELOG.md 更新
```markdown
## [4.1.0] - 2026-03-12

### Added
- 添加 Examples 章节，包含 3 个使用场景
- 细化触发关键词，增加别名映射

### Changed
- 优化 SKILL.md 文档结构

### Fixed
- 统一 VERSION 和 metadata.json 版本号
```

---

## 质量检查清单

### Universal Skill 完整性检查
- ✅ SKILL.md 存在且格式正确
- ✅ VERSION 文件存在
- ✅ metadata.json 存在且字段完整
- ✅ 符合 [Skill Format Spec](docs/skill-format.md)
- ✅ 触发关键词清晰准确
- ✅ 功能范围明确
- ✅ 使用示例丰富（如果有）

### OpenClaw Skill 适配检查
- ✅ SKILL.md 符合 OpenClaw 规范
- ✅ 触发关键词适合 OpenClaw 语境
- ✅ 版本号与 Universal 同步
- ✅ metadata.json OpenClaw 状态准确
- ✅ PLATFORM_MATRIX.md 已更新

### 发布前检查
- ✅ 所有版本号一致
- ✅ CHANGELOG.md 已更新
- ✅ 无拼写或格式错误
- ✅ 测试过基本功能
- ✅ ClawHub token 有效

---

## 技能目录结构参考

```
my-skills/
├── universal/                    # 通用技能（平台无关）
│   └── learning/
│       ├── learn-status/
│       │   ├── SKILL.md
│       │   ├── VERSION
│       │   └── metadata.json
│       └── ...
│
├── openclaw/                     # OpenClaw 平台专用
│   └── learning/
│       ├── learn-status/
│       │   ├── SKILL.md
│       │   ├── VERSION
│       │   └── metadata.json
│       └── ...
│
├── docs/
│   ├── skill-format.md
│   ├── PLATFORM_MATRIX.md
│   └── ...
│
└── CHANGELOG.md
```

---

## 与其他 Agent 的协作

### firefly（萤火）
- firefly 可以请求 skill-manager 创建或优化技能
- skill-manager 通过 sessions_send 向 firefly 通报完成状态

### spark（星火）
- 如果 spark 需要技能支持，可以请求 skill-manager 创建
- skill-manager 可以建议 spark 使用仓库中已有的技能

### 子 Agent
- 可以 spawn 临时的子 agent 完成特定任务
- 例如：使用 skill-creator 技能创建新技能

---

## 常见问题

### Q: 如何选择 skill-creator 还是 skill-scaffold？
**A:**
- **skill-creator**: 适合功能完整的技能，有优化、评估、测试能力
- **skill-scaffold**: 适合快速创建框架，支持多平台脚手架

### Q: 发布到 ClawHub 前需要做什么？
**A:**
1. 确保所有版本号一致
2. 更新 CHANGELOG.md
3. 检查 ClawHub token 有效性
4. 确认 metadata.json 完整

### Q: 如何同步 Universal 和 OpenClaw 版本？
**A:**
- Universal 是上游源码，OpenClaw 是下游适配
- 变更从 Universal 开始，然后同步到 OpenClaw
- 版本号保持一致

---

## 最佳实践

1. **先方案后执行** - 优化前先提出方案，等待确认
2. **版本管理规范** - 遵循 Semantic Versioning
3. **文档同步更新** - 修改技能时同步更新 PLATFORM_MATRIX.md
4. **质量第一** - 发布前确保质量，宁缺毋滥
5. **工具优先** - 优先使用 skill-creator、skill-scaffold 等工具

---

*Created: 2026-03-12 | Version: 1.0.0*
