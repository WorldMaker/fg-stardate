New-Item -Path .\dist -ItemType Directory -Force
Compress-Archive -Path .\src\Extension\* -DestinationPath .\dist\stardate.ext -Force
Compress-Archive -Path .\src\Module\* -DestinationPath .\dist\stardate.mod -Force
