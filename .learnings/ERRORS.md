# Errors（错误记录）

记录失败与异常。

---

## 使用模板

```markdown
## [ERR-YYYYMMDD-XXX] command_failed | api_error | timeout | unexpected_output

**Logged**: ISO-8601 时间
**Priority**: low | medium | high | critical
**Status**: pending | investigating | resolved | wontfix
**Area**: frontend | backend | infra | tests | docs | config

### Summary
一句话总结

### Error Output
```
错误信息或输出
```

### Reproduction Steps
1. 步骤1
2. 步骤2
3. ...

### Root Cause (if known)
根本原因

### Solution/Workaround (if any)
解决方案或变通方法

### Metadata
- Source: execution | integration | external_service
- Related Files: path/to/file
- Tags: tag1, tag2
- See Also: ERR-...（可选）

---
```

---
