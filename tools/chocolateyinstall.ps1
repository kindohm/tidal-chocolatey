# Install-ChocolateyPath -PathToInstall "$($env:SystemDrive)\ProgramData\chocolatey\lib\ghc\tools\ghc-8.0.2\bin"

# Install-ChocolateyPath -PathToInstall "$($env:SystemDrive)\tools\mingw64\bin"

$packageName= 'tidalcycles'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://haskell.org/platform/download/8.0.2/HaskellPlatform-8.0.2-full-i386-setup.exe'
$url64      = 'https://haskell.org/platform/download/8.0.2/HaskellPlatform-8.0.2-full-x86_64-setup.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "/qn /silent /s /norestart"
  validExitCodes= @(0)
  softwareName  = 'tidalcycles*'
  checksum      = '207EA1DD83BFAF61B74130CC1061B69E9FE5916854564434B4C2F32553027C4F'
  checksumType  = 'sha256'
  checksum64    = '45C371C5634D00B53D22AEEAE937968BAB4288FE86A718B989CDA60011F8D8B4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs


#cabal update
#cabal install tidal


# https://haskell.org/platform/download/8.0.2/HaskellPlatform-8.0.2-full-x86_64-setup.exe