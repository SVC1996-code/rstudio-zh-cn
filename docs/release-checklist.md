# 发布检查清单

- [ ] 工作树仅包含脚本、locale overlay、source patches、版本元数据、测试和文档。
- [ ] `Test-Repository.ps1` 在全新锁定上游源码上通过。
- [ ] GitHub Actions 通过，无完整程序、构建缓存、凭据或本机报告。
- [ ] provenance 没有 `missing`；若仍有 `translated` 或 `needs-review`，不得宣称全部人工审核或 `releaseReady=true`。
- [ ] 原版版本和关键 SHA-256 与 `version.json` 一致。
- [ ] 候选从原版和当前源码 tag 重新生成，没有复用旧候选文件。
- [ ] candidate validation 和约定 smoke test 通过。
- [ ] 原版目录哈希未变化。
- [ ] LICENSE、NOTICE、SOURCE、UPSTREAM 和上游第三方 notices 完整。
- [ ] GitHub Actions 通过后才创建版本标签。
- [ ] 编译前端补丁的分发合规完成单独复核后才创建 Release。
