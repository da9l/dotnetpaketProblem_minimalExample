$cacheBasePath = "C:\_cache";
# Set the nuget cache path
$nugetCachePath = "$cacheBasePath\_nuget"
New-Item -Path $nugetCachePath -ItemType "directory" -ErrorAction SilentlyContinue
[Environment]::SetEnvironmentVariable("NUGET_PACKAGES", $null, "Machine")

# Set the paket cache path
$paketCachePath = "$cacheBasePath\_paket"
New-Item -Path $paketCachePath -ItemType "directory" -ErrorAction SilentlyContinue
[Environment]::SetEnvironmentVariable("NuGetCachePath", $null, "Machine")

# Set nuget http cache path
$nugetHttpCachePath = "$cacheBasePath\_nugetHttp"
New-Item -Path $nugetHttpCachePath -ItemType "directory" -ErrorAction SilentlyContinue
[Environment]::SetEnvironmentVariable("NUGET_HTTP_CACHE_PATH", $null, "Machine")