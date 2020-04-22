# & $PSScriptRoot\clear-nugetcaches.ps1
$cacheBasePath = "C:\_cache"
# Set the nuget cache path
$nugetCachePath = "$cacheBasePath\_nuget"
New-Item -Path $nugetCachePath -ItemType "directory" -ErrorAction SilentlyContinue
[Environment]::SetEnvironmentVariable("NUGET_PACKAGES", $nugetCachePath, "Machine")

# Set the paket cache path
# $paketCachePath = "$cacheBasePath\_paket"
# New-Item -Path $paketCachePath -ItemType "directory" -ErrorAction SilentlyContinue
# [Environment]::SetEnvironmentVariable("NuGetCachePath", $paketCachePath, "Machine")

# Set nuget http cache path
$nugetHttpCachePath = "$cacheBasePath\_nugetHttp"
New-Item -Path $nugetHttpCachePath -ItemType "directory" -ErrorAction SilentlyContinue
[Environment]::SetEnvironmentVariable("NUGET_HTTP_CACHE_PATH", $nugetHttpCachePath, "Machine")