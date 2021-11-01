$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.749.0/snyk-win.exe'
  Checksum     = 'f09d79980cbb304b4f23ec0beb00924ea83dc6ec94f4164c33ed4be52008e5a6'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs