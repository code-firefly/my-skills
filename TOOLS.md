# TOOLS.md - Skill Manager Tools

## ClawHub CLI

ClawHub 是技能分发平台，用于搜索、安装和发布技能。

### 配置
- **配置文件**: `~/.clawhub/config.json`
- **Registry**: https://clawhub.ai
- **当前 Token**: 已配置（可能需要更新）

### 常用命令

#### 搜索技能
```bash
clawhub search "learning" --limit 10
```

#### 安装技能
```bash
# 安装到默认位置
clawhub install learn-status

# 安装到指定目录
clawhub install learn-status --workdir ~/projects/my-skills --dir skills
```

#### 发布技能
```bash
# 从当前目录发布
clawhub publish .

# 或指定路径
clawhub publish ~/projects/my-skills/universal/learning/learn-status
```

#### 更新技能
```bash
# 更新所有已安装技能
clawhub update

# 更新指定技能
clawhub update learn-status
```

#### 浏览最新技能
```bash
clawhub explore --limit 20
```

#### 认证管理
```bash
# 登录
clawhub login

# 检查当前登录状态
clawhub whoami

# 登出
clawhub logout
```

### GitHub 账号
- **GitHub**: https://github.com/code-firefly
- **使用场景**: ClawHub 发布技能时的账号关联

---

## skill-creator

用于创建、优化和评估技能的 CLI 工具。

### 常用命令
```bash
# 创建新技能
skill-creator create "skill-name" --category "learning"

# 优化技能
skill-creator optimize --path ./universal/learning/learn-status

# 评估技能
skill-creator eval --path ./universal/learning/learn-status
```

---

## skill-scaffold

快速生成技能脚手架，支持多平台。

### 常用命令
```bash
# 创建 Universal + OpenClaw 双平台技能
skill-scaffold create "skill-name" --platforms universal,openclaw

# 仅创建 Universal 技能
skill-scaffold create "skill-name" --platforms universal
```

---

## 文件操作工具

### jq - JSON 处理
```bash
# 读取 JSON
cat metadata.json | jq '.version'

# 更新 JSON
jq '.version = "1.0.1"' metadata.json > temp.json
mv temp.json metadata.json
```

### tree - 目录树
```bash
tree -L 3 universal/
```

---

## Git 操作

### 提交变更
```bash
# 添加所有变更
git add .

# 提交
git commit -m "feat: add learn-status skill v4.1.0"

# 推送
git push origin main
```

### 查看状态
```bash
git status
git log --oneline -5
```

---

*Keep this file updated with tool-specific notes and configurations.*
