# 🔐 LinEnumPro

![GitHub repo size](https://img.shields.io/github/repo-size/DNA-CyberSec/LinEnumPro)
![Contributors](https://img.shields.io/github/contributors/DNA-CyberSec/LinEnumPro)
![License](https://img.shields.io/github/license/DNA-CyberSec/LinEnumPro)

**LinEnumPro** is an advanced automated Linux enumeration script specifically developed to streamline the initial reconnaissance phase during penetration tests and security assessments. The script efficiently collects comprehensive information from Linux-based systems to rapidly identify potential security vulnerabilities, focusing on privilege escalation opportunities.

By automating common enumeration tasks, **LinEnumPro** helps cybersecurity experts save time, increase accuracy, and quickly pinpoint areas that require further investigation or remediation.

---

# 🚀 Features

- ⚙️ **System Information Collection:** Gathers detailed information about the Linux OS version, kernel, and basic system configuration.
- 🐧 **Kernel Exploit Enumeration:** Automatically identifies the Linux kernel version and searches known exploits in exploit databases.
- 👤 **Users and Permissions Enumeration:** Detailed information on system users, group memberships, and sudo privileges.
- 📅 **Cron Job Enumeration:** Identifies cron jobs and scheduled tasks that could potentially be exploited.
- 🔑 **SUID Binaries Enumeration:** Lists binaries with special permissions that could lead to privilege escalation.
- 📑 **Professional Logging:** Produces clear, professional log files for easy review and reporting.

---

## 🎯 Target Audience

Designed specifically for:

- Cybersecurity Professionals
- Penetration Testers
- Ethical Hackers
- System Administrators
- Security Auditors
- IT Security Teams

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

