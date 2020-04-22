# Remove the nuget cache path
[Environment]::SetEnvironmentVariable("NUGET_PACKAGES", $null, "Machine")
# Remove the paket cache path
[Environment]::SetEnvironmentVariable("NuGetCachePath", $null, "Machine")
# Remove nuget http cache path
[Environment]::SetEnvironmentVariable("NUGET_HTTP_CACHE_PATH", $null, "Machine")
$cacheBasePath = "C:\cachenuget"
Remove-Item -recurse -force $cacheBasePath