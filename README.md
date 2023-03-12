# DB-Server-Preventive-Maintenance
this is just a script that will automatic email me if the storage drops in 100gb from my 1TB HDD


To use this script, simply copy and paste it into a PowerShell window or PowerShell ISE, and replace the following variables with your own values:

$driveLetter: The letter of the drive you want to monitor (in this case, "D").
$warningThreshold: The amount of free space (in bytes) at which you want to be alerted (in this case, 900 GB).
$recipient: The email address where you want to receive the alert.
You may also need to modify the $smtpServer, $smtpPort, $smtpUsername, and $smtpPassword variables to match your SMTP server configuration.

Once you've made these changes, save the script to a file with a .ps1 extension (e.g., DriveSpaceMonitor.ps1), and run it using PowerShell. The script will run in the background and periodically check the free space on your D drive, sending an email if the free space drops below the warning threshold.
