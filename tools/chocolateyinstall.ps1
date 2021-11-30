$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.779.0/snyk-win.exe'
  Checksum     = 'fcf5c272b1c80d2bacb6a291bf431629402bf6fc5940d51f14776674bc28df75'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs