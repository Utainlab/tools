# phar-maker.bat

A lightweight **BAT + PHP hybrid script** to quickly generate `.phar.gz` archives from PHP files.

Designed for **security research, PHAR deserialization testing, and payload crafting**.

---

## ✨ Features

- 🧩 Single-file implementation (BAT + PHP hybrid)
- 🖱️ Drag & drop support (Windows)
- 💻 Command-line usage
- 📦 Automatically generates `.phar.gz`
- ⚡ Injects `__HALT_COMPILER()` stub automatically
- 🔗 Generates a loader file (`_ms.php`)

---

## 📦 Requirements

- Windows OS
- PHP CLI installed
- PHP configuration:
  - Phar extension enabled (default)
  - `phar.readonly = 0`

---

## 🚀 Usage

### Method 1: Drag & Drop

Simply drag your PHP file onto `phar-maker.bat`.

---

### Method 2: Command Line

```bash
phar-maker.bat target.php
