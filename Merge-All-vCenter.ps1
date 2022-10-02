#This script is to merge all your vCenter Report into one Excel Report
#Version 1.0.1
#Writer - Mustaqim Yusof

# Save current directory
$SaveCurrentDir = (get-location).Path

# Set RVTools path
[string] $RVToolsPath = "C:\Program Files (x86)\Robware\RVTools"

# cd to RVTools directory
set-location $RVToolsPath

# Set Domain
$domain = Read-Host "Enter Your Domain Here"

# Set Excel Format
$filetype = ".xlsx"

# Set Date
$date = get-date -Format yyyyMMdd
$date2 = get-date -Format dd-MMM-yyyy

[string] $XlsxDir = Read-Host "Enter Your File Path"

# Pulling vCenter Name from vCenterList.txt file in your file path
# Please note that your current report must be named as your vCenter

$XlsxFile = @($vCenterList) 
$XlsxFile = $XlsxFile | ForEach-Object {"$XlsxDir\$_$domain$filetype"}
$JoinedXlsxFile= $XlsxFile -join ";"

# -----------------------------------------------
# Merge xlsx files vCenter1 + vCenter2 + vCenter3
# -----------------------------------------------
$OutputFile = "$XlsxDir\All vCenter - $date2$filetype"
& .\RVToolsMergeExcelFiles.exe -input "$JoinedXlsxFile" -output $OutputFile -overwrite -verbose
#
#
# Back to starting dir
Set-Location $SaveCurrentDir
