# Script to download, unzip, and setup Agent Ransack
# Called by install.cmd

# Load parameters
param(
    [Parameter(Mandatory=$True)]
    [String] $version
)
# Get the directory this script is running under
$script_path = dir "$($myInvocation.MyCommand.Definition)"
$script_path = $script_path.DirectoryName

# Define variables
$base_url="https://download.mythicsoft.com/flp"
$filename = "agentransack_x64_msi_$version.zip"
$url = "$base_url/$version/$filename"
$zip_file = "$script_path\$filename"
$date = Get-Date -Format "yyyyMMdd"

# Download the file
# Powershell supports only TLS 1.0 by default. Add support up to TLS 1.2
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]'Tls,Tls11,Tls12'
$client = new-object System.Net.WebClient
$client.DownloadFile($url, $zip_file)

# Unzip the file to current location
$ProgressPreference = "SilentlyContinue"

if ($PSVersionTable.PSVersion.Major -ge 5) {
    Get-ChildItem $zip_file | Expand-Archive -DestinationPath $script_path -Force
} else {
    $Shell = new-object -com Shell.Application
    $Shell.Namespace($script_path).copyhere($Shell.NameSpace($zip_file).Items(), 4)
}

# Install the Agent Ransack MSI
Start-Process -FilePath $script_path\agentransack_x64_$version.msi -ArgumentList ('/qn /norestart') -PassThru -Wait
#& "$script_path\agentransack_x64_$version.msi" /qn /norestart

# Remove the zip and MSI file
Remove-Item -Path $zip_file -Force
Remove-Item -Path $script_path\agentransack_x64_$version.msi -Force
