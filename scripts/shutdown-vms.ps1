$vmNames = @("webvm1", "webvm2")
$resourceGroup = "rg-webapp-infra"

foreach ($vm in $vmNames) {
    Stop-AzVM -Name $vm -ResourceGroupName $resourceGroup -Force -ErrorAction Continue
}