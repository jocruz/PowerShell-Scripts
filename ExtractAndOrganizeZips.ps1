# Define paths
# sourceDir is the folder where all of the ZIP files exist that we want to extract
$sourceDir = "C:\Path\To\Your\ZIPFiles"  # Placeholder: Change this to the path containing your ZIP files
$tempExtractDir = "$sourceDir-Extracted"  # Automatically appends '-Extracted' to the sourceDir

# Create the extraction directory
New-Item -Path $tempExtractDir -ItemType Directory

# Extract all ZIP files in the source directory
Get-ChildItem -Path $sourceDir -Filter *.zip | ForEach-Object {
    $zipFile = $_.FullName
    Expand-Archive -Path $zipFile -DestinationPath $tempExtractDir
}

Write-Output "Extraction complete!"
