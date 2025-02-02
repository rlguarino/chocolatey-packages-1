﻿$packageName = 'grails'
$packageVersion = $env:chocolateyPackageVersion
$checksum = 'D6C214642DADBB450DB306A17FC6FF3A60FD9D1F515CC91B273F239A6A8ADC76'
$url = 'https://github.com/grails/grails-core/releases/download/v3.3.9/grails-3.3.9.zip'
$toolsDir = Get-ToolsLocation
$grails_home = Join-Path $toolsDir "$packageName-$packageVersion"

Install-ChocolateyZipPackage `
	-PackageName $packageName `
	-Url $url `
	-UnzipLocation $toolsDir `
	-Checksum $checksum `
	-ChecksumType 'sha256'

Install-ChocolateyEnvironmentVariable -VariableName "GRAILS_HOME" -VariableValue $grails_home -VariableType 'Machine'
Install-ChocolateyPath -PathToInstall "$grails_home\bin" -PathType 'Machine'
