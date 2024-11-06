$RegistryPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search"
$Name = "BingSearchEnabled"
$Value = "0"

# This guard has not been tested for a positve case
If (-NOT (Test-Path $RegistryPath)) {
	Write-Output "The key `"$RegistryPath`" does not exist"
	Break
}

if ($args.count -eq 0 ){
	New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType DWORD -Force
	Write-Output "Bing search in Search Box has been disabled."
	Write-Output 'The change can be reverted by using this script with "revert" argument.'
}
elseif ( $args[0] -eq "revert" ) {
	Remove-ItemProperty -Path $RegistryPath -Name $Name
	Write-Output "$Name variable has been removed from $RegistryPath (therefore Bing search is probably auto-enabled)."
}
else {
	Write-Output "Unknown arguments"
}