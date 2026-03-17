# phar-maker

一个基于 **BAT + PHP 混合脚本** 的 PHAR 打包工具，支持通过拖拽或命令行快速将 PHP 文件打包为 `.phar.gz` 文件。

适用于安全研究、PHAR 测试、PoC 构造等场景。

---

## ✨ 特性

- 🧩 单文件实现（.bat + PHP 混写）
- 🖱️ 支持拖拽 PHP 文件直接生成 PHAR
- 💻 支持命令行调用
- 📦 自动生成 `.phar.gz` 压缩文件
- ⚡ 自动注入 `__HALT_COMPILER()` stub
- 🔗 自动生成 include 加载文件（`_ms.php`）

---

## 📦 环境要求

- Windows 系统
- 已安装 PHP（CLI 可用）
- PHP 需支持：
  - Phar 扩展（默认开启）
  - `phar.readonly = 0`

---

## 🚀 使用方法

### 方法一：拖拽执行

将目标 PHP 文件拖到 `phar-maker.bat` 上即可。

---

### 方法二：命令行执行

```bash
phar-maker.bat test.php
