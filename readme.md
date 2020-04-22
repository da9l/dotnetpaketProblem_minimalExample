# Minimal example to expose bug when relocating nuget caches.

## Instructions to reproduce.

1) Start admin powershell
2) `run-paket.ps1` for expected behaviour
3) `clear-nugetCaches.ps1` to clear all existing caches.
4) `setup-alternateCacheLocations.ps1` for NUGET_PACKAGES, NuGetCachePath, NUGET_HTTP_CACHE_PATH
5) Close current powershell and Start new admin powershell. (this is necessary to expose the problem)
6) `run-paket.ps1` yields (error at the end):

```powershell
http-cache: C:\_cache\_nugetHttp
global-packages: C:\_cache\_nuget
temp: C:\Users\se-danhegn-01\AppData\Local\Temp\NuGetScratch
plugins-cache: C:\Users\se-danhegn-01\AppData\Local\NuGet\plugins-cache
Tool 'paket' (version '5.243.0') was restored. Available commands: paket

Restore was successful.
Run "dotnet tool restore" to make the "paket" command available.
```

to restore your machine:

1) `clean-nugetCaches.ps1`
2) `remove-alternateCacheLocations.ps1`