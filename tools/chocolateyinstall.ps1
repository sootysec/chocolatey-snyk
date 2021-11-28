$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.775.0/snyk-win.exe'
  Checksum     = '318f55b33dd2646c18109d7aa7da3a78d5063fedb6c099087d6aad74d1110d98'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs