[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$objNotifyIcon = New-Object System.Windows.Forms.NotifyIcon

$objNotifyIcon.Icon = [System.Drawing.SystemIcons]::Information
$objNotifyIcon.BalloonTipIcon = "Info" 
$objNotifyIcon.BalloonTipText = "cuidado comigo" 
$objNotifyIcon.BalloonTipTitle = "Hack"
$objNotifyIcon.Visible = $True

$objNotifyIcon.ShowBalloonTip(10000)

Start-Process "m.bat"
Start-Sleep -s 1

$objNotifyIcon.Icon = [System.Drawing.SystemIcons]::Information
$objNotifyIcon.BalloonTipIcon = "Info" 
$objNotifyIcon.BalloonTipText = "oi comigo" 
$objNotifyIcon.BalloonTipTitle = "Hack"
$objNotifyIcon.Visible = $True

$objNotifyIcon.ShowBalloonTip(10000)