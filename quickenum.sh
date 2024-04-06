#! /bin/bash

#Linux QuickEnum script for privilege escalation by @gustanini

# Color Variables
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

function printCategory {
    echo -e "${GREEN}$1${NC}"
}

function runCommand {
    echo -e "${RED}$1${NC}"
    echo -e "${YELLOW}"
    eval $1
    echo -e "${NC}"
}

echo -e "${GREEN}"[CATEGORY] - User Information"${NC}"
echo -e ""
runCommand "id"
runCommand "cat /etc/passwd"

echo -e "${GREEN}"[CATEGORY] - Host Information"${NC}"
echo -e ""
runCommand "hostname"

echo -e "${GREEN}"[CATEGORY] - Kernel Information"${NC}"
echo -e ""
runCommand "uname -a"
runCommand "cat /etc/issue"
runCommand "cat /etc/os-release"

echo -e "${GREEN}"[CATEGORY] - Processes Running"${NC}"
echo -e ""
runCommand "ps aux"

echo -e "${GREEN}"[CATEGORY] - Network Information"${NC}"
echo -e ""
runCommand "ip a || ifconfig"
runCommand "route"
runCommand "ss -plunt || sockstat -4l"

echo -e "${GREEN}"[CATEGORY] - Firewall Rules"${NC}"
echo -e ""
runCommand "cat /etc/iptables/rules.v4"

echo -e "${GREEN}"[CATEGORY] - Scheduled Tasks"${NC}"
echo -e ""
runCommand "cat /etc/crontab"
runCommand "ls -lah /etc/cron*"
runCommand "crontab -l"

echo -e "${GREEN}"[CATEGORY] - Installed Applications"${NC}"
echo -e ""
runCommand "ls /opt/"
runCommand "ls /etc/"

echo -e "${GREEN}"[CATEGORY] - Files with Insecure Permissions"${NC}"
echo -e ""
runCommand "ls -la /etc/shadow"
runCommand "ls -la /etc/passwd"
runCommand "find / -writable -type d 2>/dev/null"
runCommand "find / -perm -4000 2>/dev/null"

echo -e "${GREEN}"[CATEGORY] - Drives Information""${NC}"
echo -e ""
runCommand "cat /etc/fstab"
