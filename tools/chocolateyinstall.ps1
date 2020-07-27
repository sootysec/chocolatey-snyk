$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.366.0/snyk-win.exe'
  Checksum     = '8f584d492d11a5f95d2a7886bfa54bbb93d402a437c89a021708414220a9f934'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs