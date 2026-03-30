#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Aman Kumar Akela"
SOFTWARE_CHOICE="Git"

DISTRO=$(hostnamectl | awk -F: '/Operating System/ {print $2}' | xargs)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)

echo "======================================"
echo "   Open Source Audit — System Report"
echo "======================================"
echo "Student Name : $STUDENT_NAME"
echo "Software     : $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $DATE"
echo "--------------------------------------"
echo "License Info : Linux Kernel is licensed under GPL v2"
echo "======================================"