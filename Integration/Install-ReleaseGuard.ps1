param([string]$ProfileRoot=(Join-Path $env:USERPROFILE 'Saved Games/DCS'))
$ErrorActionPreference='Stop'
$resolvedProfile=[IO.Path]::GetFullPath($ProfileRoot)
$runtime=Join-Path $resolvedProfile 'Mods/aircraft/TPG FPV Drone/MissionTools/FPV_DEMON_ReleaseGuard.lua'
if (-not (Test-Path -LiteralPath $runtime -PathType Leaf)) {
 throw "Copy TPG FPV Drone into $resolvedProfile/Mods/aircraft first."
}
$hookDirectory=Join-Path $resolvedProfile 'Scripts/Hooks'
New-Item -ItemType Directory -Force $hookDirectory | Out-Null
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'TPG_FPV_DEMON_ReleaseGuard.lua') -Destination (Join-Path $hookDirectory 'TPG_FPV_DEMON_ReleaseGuard.lua') -Force
Write-Output 'FPV DEMON grenade release guard installed. Restart DCS. Install on the host/server for multiplayer.'
