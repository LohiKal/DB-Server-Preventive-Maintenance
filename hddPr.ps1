$driveLetter = "D"
$warningThreshold = 900GB
$recipient = "youremailaddress@example.com"

$drive = Get-PSDrive -Name $driveLetter
$freeSpace = [math]::Round($drive.Free / 1GB)

if ($freeSpace -lt ($warningThreshold / 1GB)) {
    $subject = "Warning: Drive $driveLetter is running low on space"
    $body = "Drive $driveLetter has only $freeSpace GB of free space remaining."
    $smtpServer = "yourSMTPserver.example.com"
    $smtpPort = 587
    $smtpUsername = "yourSMTPusername"
    $smtpPassword = "yourSMTPpassword"
    
    $message = New-Object System.Net.Mail.MailMessage
    $message.From = "sender@example.com"
    $message.To.Add($recipient)
    $message.Subject = $subject
    $message.Body = $body
    
    $smtpClient = New-Object System.Net.Mail.SmtpClient($smtpServer, $smtpPort)
    $smtpClient.EnableSsl = $true
    $smtpClient.Credentials = New-Object System.Net.NetworkCredential($smtpUsername, $smtpPassword)
    $smtpClient.Send($message)
}
