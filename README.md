# QuickEnum for Linux

QuickEnum is a tool designed to help with privilege escalation on Linux systems. It organizes a series of system enumeration commands into categories and executes each in sequence, displaying the commands and their results in a colored output. 

The purpose is to make it easier to understand and organize the system's information while auditing or conducting a penetration test.

## Features

- Organizes commands into various categories for better clarity.
- Displays each command in red before executing it.
- Outputs the result of each command in yellow immediately after the command.
- Group category headers are shown in green.

## Categories

The script includes commands from the following categories:

- User Information: Displays information about the current user and the contents of the /etc/passwd file.
- Host Information: Outputs the hostname of the current system.
- Kernel Information: Provides details about the Linux kernel and OS release information.
- Processes Running: Lists all currently running processes.
- Network Information: Shows network interface details and routing tables.
- Firewall Rules: Displays firewall rules if applicable.
- Scheduled Tasks: Checks for any scheduled cron jobs.
- Installed Applications: Lists directories that may contain installed applications.
- Files with Insecure Permissions: Looks for files with insecure permissions.
- Drives Information: Provides details about the file system mounts.

## Usage

To use this script, simply download it, give it execute permissions, and run it:

```bash
chmod +x quickenum.sh
./quickenum.sh
```

This script does not require any command line arguments to run. It should be run by a user with sufficient privileges to execute the included system commands.

Please note that this tool should be used responsibly and ethically, and only on systems where you have explicit permission to do so.
