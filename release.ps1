$VERSION = '1.4'
$targetDir = "C:\Program Files (x86)\Steam\steamapps\common\KingdomComeDeliverance\mods\Cheat\"
$srcDir = "$PSScriptRoot\Source"

(Get-Content "$PSScriptRoot\mod.manifesttemplate") | Foreach-Object {
	$_ -replace '{created}',  [datetime]::Now.ToString('ddd MMM dd HH:mm:ss yyyy', [Globalization.CultureInfo]::CreateSpecificCulture('en-GB')) `
		-replace '{version}', $VERSION
} | Out-File "$PSScriptRoot\mod.manifest"

Remove-Item "$targetDir\*" -Recurse

New-Item "$targetDir\Data" -ItemType Directory -Force | Out-Null
Compress-Archive (Get-ChildItem $srcDir | Select-Object -ExpandProperty FullName) -DestinationPath "$targetDir\Data\data.zip" -Force
Rename-Item "$targetDir\Data\data.zip" -NewName "$targetDir\Data\data.pak" -Force

Move-Item "$PSScriptRoot\mod.manifest" -Destination $targetDir