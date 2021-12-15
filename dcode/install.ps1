# Script to download, unzip, and setup DCode
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
$base_url="https://www.digital-detective.net/download/download.php?downcode=ae2znu5994j1lforlh03"
$filename = "DCode-x86-EN-5.5.21194.40.zip"
$zip_file = "$script_path\$filename"
$date = Get-Date -Format "yyyyMMdd"

# Download the file
# Powershell supports only TLS 1.0 by default. Add support up to TLS 1.2
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]'Tls,Tls11,Tls12'
$client = new-object System.Net.WebClient
$client.DownloadFile($base_url, $zip_file)

# Unzip the file to current location
$ProgressPreference = "SilentlyContinue"
Get-ChildItem $zip_file | Expand-Archive -DestinationPath "C:\salt\tempdownload\dcode" -Force
