# oss-audit-24BEC10049
# Open Source Audit Project

## Student Details
- Name: B.UDAYA KRISH
- Roll Number: 24BEC10049

## Chosen Software
Git (Open Source Version Control System)

---

## Scripts Description

### 1. System Identity Report
Displays system details such as OS, kernel, user, uptime, and license.

### 2. Package Inspector
Checks if a package is installed and displays its details.

### 3. Disk and Permission Auditor
Analyzes system directories for size and permissions.

### 4. Log File Analyzer
Counts keyword occurrences in log files and shows recent matches.

### 5. Open Source Manifesto Generator
Generates a personal manifesto based on user input.

---

## How to Run Scripts

1. Open terminal
2. Navigate to folder:
   cd oss-audit-[24BEC10049]

3. Give permission:
   chmod +x *.sh

4. Run scripts:

   ./script1_system_identity.sh  
   ./script2_package_inspector.sh  
   ./script3_disk_auditor.sh  
   ./script4_log_analyzer.sh /var/log/syslog error  
   ./script5_manifesto.sh  

---

## Dependencies

- Linux OS (Ubuntu recommended)
- Bash shell
- Core utilities (uname, grep, awk, etc.)
- dpkg (for Debian-based systems)

---

## Notes

All scripts are tested on Ubuntu Linux and demonstrate basic shell scripting concepts like loops, conditionals, variables, and file handling.
