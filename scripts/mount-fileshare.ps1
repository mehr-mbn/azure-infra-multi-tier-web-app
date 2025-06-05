$storageAccountName = "webappstor1234"
$shareName = "webappshare"
$storageKey = "***"

$secureKey = ConvertTo-SecureString $storageKey -AsPlainText -Force
$creds = New-Object System.Management.Automation.PSCredential -ArgumentList "$storageAccountName", $secureKey

New-PSDrive -Name "Z" -PSProvider FileSystem -Root "\$storageAccountName.file.core.windows.net\$shareName" -Persist -Credential $creds