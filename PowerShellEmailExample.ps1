<# ******************************************************************************************************
* @author by Ricardo Wagemaker (["java"] + "@" + "wagemaker.co.uk") 2020-2022
* @title PowerShellEmailExample
* @version 1.0.0
* @since   2022-2022
* @License MIT
******************************************************************************************************
#>
#
# Update variable first.
$password = "password_here"
$username = "user_name"
$FROM = 'sender@gmail.com'
$TO = 'receiver@gmail.com'
$SUBJECT = 'Subject Test in PowerShell'
$MESSAGE = 'This is the entire message content that will be sent via powershell'

# executing script with above settings.
$secpasswd = ConvertTo-SecureString $password -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ($username, $secpasswd)
Send-MailMessage -SmtpServer smtp.gmail.com -Credential $cred -UseSsl -From $FROM -To $TO -Subject $SUBJECT -Body $MESSAGE