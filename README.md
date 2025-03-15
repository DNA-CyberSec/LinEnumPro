# 🔐 LinEnumPro

![GitHub repo size](https://img.shields.io/github/repo-size/DNA-CyberSec/LinEnumPro)
![Contributors](https://img.shields.io/github/contributors/DNA-CyberSec/LinEnumPro)
![License](https://img.shields.io/github/license/DNA-CyberSec/LinEnumPro)

**LinEnumPro** is a professional, automated Linux enumeration script designed to help cybersecurity professionals quickly gather critical system information and identify potential privilege escalation vulnerabilities.

---

## 🚀 Features

- ⚙️ **System Information Collection**: Gathers detailed information about the Linux OS version, kernel, and basic system configuration.
- 🐧 **Kernel Exploit Enumeration**: Automatically checks kernel version against known vulnerabilities.
- 👥 **Users and Permissions**: Lists all system users and checks for sudo privileges.
- 📅 **Cron Job Enumeration**: Identifies cron jobs configured on the system.
- 🔑 **SUID Binaries Enumeration**: Finds potentially exploitable SUID binaries.
- 📑 **Clear Logging**: Creates detailed and readable log files for further analysis.

---

## 🎯 Target Audience

This script is specifically designed for:

- Cybersecurity Professionals
- Penetration Testers
- Ethical Hackers
- System Administrators

---

## 📦 Installation

Clone the repository:

```bash
git clone https://github.com/DNA-CyberSec/LinEnumPro.git
cd LinEnumPro
chmod +x linenum_pro.sh
```

---

## 📦 Usage

Run the script:

```bash
./linenum_pro.sh
```

---

## 📝 Logs

All collected information is saved automatically into organized log files:

```bash
linux_enum_<date>_<time>.log
```

---

## 🤝 Contributions

Feel free to contribute by opening issues or pull requests. All contributions are welcome!

---

## 📄 License

MIT

