# PowerShellMail
Example how to send email using PowerShell
<br><br>
<br>
# Update variable first.<br>
$password = "password_here"<br>
$username = "user_name"<br>
$FROM = 'sender@gmail.com'<br>
$TO = 'receiver@gmail.com'<br>
$SUBJECT = 'Subject Test in PowerShell'<br>
$MESSAGE = 'This is the entire message content that will be sent via powershell'<br>
<br>
# executing script with above settings.<br>
$secpasswd = ConvertTo-SecureString $password -AsPlainText -Force<br>
$cred = New-Object System.Management.Automation.PSCredential ($username, $secpasswd)<br>
Send-MailMessage -SmtpServer smtp.gmail.com -Credential $cred -UseSsl -From $FROM -To $TO -Subject $SUBJECT -Body $MESSAGE<br>
