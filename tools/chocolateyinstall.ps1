$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.780.0/snyk-win.exe'
  Checksum     = '2652bb400160d306c07004390abc9a6226cc237be10423a3bd1e33bdf7902997'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs