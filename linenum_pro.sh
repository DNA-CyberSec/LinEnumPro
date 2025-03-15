#!/bin/bash

# Linux Enumeration and Privilege Escalation Script
# Author: [RAMI HACMON]
# Date: $(date)

# ============================================================
# Script Purpose:
# This script automates the collection of important system information
# for Linux systems to help identify potential vulnerabilities
# for privilege escalation (Privilege Escalation Enumeration).
#
# Target Users:
# Intended primarily for cybersecurity professionals, penetration testers,
# ethical hackers, and system administrators.
#
# Why was this script created:
# To simplify and speed up the initial enumeration process,
# providing organized logs and quickly highlighting key areas
# of interest such as system info, kernel version, users, permissions,
# cron jobs, and SUID binaries.
# ============================================================

# Color definitions
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

LOG_FILE="linux_enum_$(date '+%Y%m%d_%H%M%S').log"

# Function to print colored text to terminal and clean text to log
log() {
    COLOR="$1"
    TEXT="$2"
    echo -e "${COLOR}${TEXT}${NC}"
    echo -e "$TEXT" >> "$LOG_FILE"
}

# Check and set execute permissions if not set
if [ ! -x "$0" ]; then
    log "$YELLOW" "[*] Setting execute permissions for the script..."
    chmod +x "$0"
    log "$GREEN" "[*] Permissions set. Please run the script again."
    exit
fi

log "$CYAN" "[+] Linux Enumeration Script started at: $(date)"

# Function to collect basic system info
collect_system_info() {
    log "$YELLOW" "\n[*] Collecting system information..."
    INFO=$(uname -a; lsb_release -a 2>/dev/null; cat /etc/os-release)
    echo "$INFO" | tee -a "$LOG_FILE"
}

# Function to enumerate kernel version and potential exploits
enumerate_kernel_exploits() {
    log "$YELLOW" "\n[*] Enumerating kernel version and checking for exploits..."
    KERNEL_VERSION=$(uname -r)
    log "$CYAN" "Kernel Version: $KERNEL_VERSION"

    log "$CYAN" "Searching exploits for kernel $KERNEL_VERSION..."
    SEARCH_RESULT=$(searchsploit linux kernel "$KERNEL_VERSION")
    echo "$SEARCH_RESULT" | tee -a "$LOG_FILE"
}

# Function to enumerate users and permissions
enumerate_users_permissions() {
    log "$YELLOW" "\n[*] Enumerating users and permissions..."
    log "$CYAN" "\nUsers:"
    cat /etc/passwd | tee -a "$LOG_FILE"

    log "$CYAN" "\nSudo privileges:"
    sudo -l 2>/dev/null | tee -a "$LOG_FILE"
}

# Function to enumerate cron jobs
enumerate_cron_jobs() {
    log "$YELLOW" "\n[*] Enumerating cron jobs..."
    ls -al /etc/cron* | tee -a "$LOG_FILE"
    crontab -l 2>/dev/null | tee -a "$LOG_FILE"
}

# Function to enumerate SUID binaries
enumerate_suid_binaries() {
    log "$YELLOW" "\n[*] Enumerating SUID binaries..."
    find / -perm -4000 -type f 2>/dev/null | tee -a "$LOG_FILE"
}

# Main function
main() {
    collect_system_info
    enumerate_kernel_exploits
    enumerate_users_permissions
    enumerate_cron_jobs
    enumerate_suid_binaries

    log "$GREEN" "\n[+] Enumeration complete at: $(date)"
    log "$GREEN" "[+] Log file saved as: $LOG_FILE"
}

# Execute main function
main
