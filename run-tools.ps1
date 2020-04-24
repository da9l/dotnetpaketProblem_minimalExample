dotnet nuget locals all --list
dotnet tool restore
dotnet fsharplint
dotnet gitversion
dotnet paket info
write-output "Lastexitcode: $lastexitcode"