$directory = 'C:\Users\John\Desktop\PEH Course Notes'

Get-ChildItem -Path $directory -Recurse -File | Where-Object { $_.Name -like "*__*" } | ForEach-Object {
    $newName = $_.Name -replace '.*__', ''
    Rename-Item -Path $_.FullName -NewName $newName
    Write-Output "Renamed: $($_.Name) to $newName"
}