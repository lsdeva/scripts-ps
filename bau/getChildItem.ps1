Get-ChildItem -Recurse  | %{$_.fullName}

Get-ChildItem -Recurse -File | Rename-Item -NewName {$_.Name -replace ' ','_' }

#get last written log line
Get-ChildItem $log | Sort-Object LastWriteTime | select -Last 1 | cat

#check file version ..
Get-ChildItem -Path "\\server\D\folder\*.*" | ForEach-Object { [system.diagnostics.fileversioninfo]::getversioninfo($_).FileVersion}