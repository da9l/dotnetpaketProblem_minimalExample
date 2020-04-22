dotnet nuget locals all --list
dotnet tool restore
dotnet paket info
write-output "Lastexitcode: $lastexitcode"