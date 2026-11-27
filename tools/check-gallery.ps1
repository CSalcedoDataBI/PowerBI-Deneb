<#
.SYNOPSIS
  Fails when a visual folder has no screenshot or no row in the README gallery.
.DESCRIPTION
  Every visual folder must carry preview.(png|webp|jpg|gif) and the root README
  must show it as an image linking to the folder. Run it before publishing:
    pwsh -NoProfile -File tools/check-gallery.ps1
#>
$root = Split-Path $PSScriptRoot -Parent
$readme = Get-Content (Join-Path $root 'README.md') -Raw
$fail = 0
Get-ChildItem $root -Directory | Where-Object { $_.Name -notin '.git', '.github', 'tools' } | ForEach-Object {
  $img = Get-ChildItem $_.FullName -File -Filter 'preview.*' | Where-Object Extension -in '.png', '.webp', '.jpg', '.gif' | Select-Object -First 1
  $u = [uri]::EscapeUriString($_.Name).Replace('(', '%28').Replace(')', '%29')
  if (-not $img) { Write-Host "FAIL $($_.Name): no preview image"; $fail++; return }
  if ($img.Extension -ne '.gif') { Add-Type -AssemblyName System.Drawing; try { $bm = [System.Drawing.Image]::FromFile($img.FullName); if ($bm.Width -lt 1200) { Write-Host "FAIL $($_.Name): preview is $($bm.Width) px wide, needs 1200+ (2x)"; $fail++ }; $bm.Dispose() } catch {} }
  if (-not $readme.Contains("$u/$($img.Name)")) { Write-Host "FAIL $($_.Name): not in the README gallery"; $fail++ }
}
if ($fail) { exit 1 }
Write-Host 'OK: every visual has its screenshot in the README gallery'
