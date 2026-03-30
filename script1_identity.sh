#!/bin/bash
# Script 1: System Identity Report
# Author: Akshat Lohiya
# Course: Open Source Software

STUDENT_NAME="Akshat Lohiya"
SOFTWARE_CHOICE="VLC Media Player"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

echo "========================================"
echo "          Open Source Audit             "
echo "========================================"
echo "Student : $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "License : The OS is covered by the GPL v2 license."