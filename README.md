# Project for Open Source Audits

**Name of Student:** Akshat Lohiya
* **Number of Registration:** 24BSA10239
* **Selected Software:** VLC Media Player ## Script Descriptions
* **Script 1 (System Identity Report):** Shows information about the Linux operating system, such as the kernel version, the current user, the amount of time it has been running, and the open-source license.
* **Script 2 (FOSS Package Inspector):** Looks for VLC and gets its version and maintainer information using `dpkg`. It also prints a short note about philosophy.
* **Script 3 (Disk and Permission Auditor):** Checks the sizes and permissions of important system directories and looks for the VLC configuration directory.
* **Script 4 (Log File Analyzer):** It reads a log file (`/var/log/dpkg.log`) line by line and counts how many times a certain word ("install") appears.* **Script 5 (Manifesto Generator):** Asks the user three questions about open source and then makes a personalized `.txt` manifesto file.
You need to have VLC Media Player installed on your Linux system for these scripts to work right.
To install it, use the command "sudo apt update && sudo apt install vlc -y."

## How to Use the Scripts
1. Start a terminal in Linux.
2. Go to the folder where the scripts are stored.
3. To make the scripts run, type `chmod +x script_name.sh` (for example, `chmod +x script1_identity.sh`).
4. Run the script by typing `./script_name.sh` in the command line.
Script 4 needs sudo access to read system logs. Use `sudo ./script4_logs.sh` to run it.
