# Contributing Guide

感谢您对 My Skills 项目的关注！我们欢迎各种形式的贡献。

## How to Contribute

### 报告问题

在 GitHub Issues 中报告 bug 或提出功能请求。

### 提交代码

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/amazing-feature`)
3. 提交更改 (`git commit -m 'feat: add amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 创建 Pull Request

### 提交规范

使用约定式提交 (Conventional Commits):

- `feat:` 新功能
- `fix:` 问题修复
- `docs:` 文档更新
- `style:` 代码格式调整
- `refactor:` 代码重构
- `test:` 测试相关
- `chore:` 构建/工具相关

示例：
```bash
git commit -m "feat: add new skill for project management"
git commit -m "fix: resolve trigger keyword parsing issue"
git commit -m "docs: update platform guide with examples"
```

## Adding New Skills

### Universal Skills

1. 在 `universal/<category>/<skill-name>/` 创建目录
2. 创建必需文件：
   - `SKILL.md` - 技能定义
   - `VERSION` - 版本号
   - `metadata.json` - 元数据
3. 更新 `docs/PLATFORM_MATRIX.md`
4. 更新 `CHANGELOG.md`
5. 提交 PR

### Platform-Specific Skills

1. 在对应平台目录下创建技能
2. 从 Universal 转换或直接创建
3. 更新 Universal 技能的 metadata.json
4. 更新 PLATFORM_MATRIX.md
5. 测试并提交 PR

## Skill Development Guidelines

### Universal Skill Design

1. **平台无关**: 避免使用平台特定语法
2. **清晰描述**: 详细说明功能和触发条件
3. **版本管理**: 使用语义化版本号
4. **元数据完整**: 填写所有必需字段

### Quality Checklist

- [ ] SKILL.md 格式正确
- [ ] VERSION 文件存在
- [ ] metadata.json 完整
- [ ] 触发关键词明确
- [ ] 使用示例清晰
- [ ] 已更新相关文档

## Code Review

所有 PR 需要通过代码审查：

1. 格式检查
2. 功能测试
3. 文档完整性
4. 版本号更新

## Release Process

1. 更新 CHANGELOG.md
2. 创建 Git 标签
3. 发布 GitHub Release
4. 更新版本号

## License

贡献的代码将采用 MIT 许可证发布。

## Questions?

在 GitHub Issues 或 Discussions 中提问。

---

*Last Updated: 2026-03-12*
