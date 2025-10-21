$folder = $PSScriptRoot;
$targetPath = Join-Path $folder "ToggleNightLight.vbs";
$iconPath = Join-Path $folder "icon.ico";
$startMenuPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs";
$shortcutPath = Join-Path $startMenuPath "Night Light.lnk";

$wshShell = New-Object -ComObject WScript.Shell;
$shortcut = $wshShell.CreateShortcut($shortcutPath);
$shortcut.TargetPath = $targetPath;
$shortcut.IconLocation = $iconPath;
$shortcut.WorkingDirectory = $folder;
$shortcut.Save();
