$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.778.0/snyk-win.exe'
  Checksum     = '3918b4c416b37226d53b67bd097d17ada43b3ca9b26280ccf092129383f025e7'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs