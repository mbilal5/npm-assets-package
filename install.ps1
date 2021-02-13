using namespace System.Linq


$packagePath = (Get-Location)
$installPath = (Get-Item -Path Env:INIT_CWD).Value
$packageFolder = Get-Item -Path $packagePath

$folder = Get-Item -Path $installPath

$packageFolder.GetDirectories("assets") | Copy-Item -Destination $folder -Force -Recurse
