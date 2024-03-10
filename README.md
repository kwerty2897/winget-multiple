## Overview
This PowerShell script is designed to check for the presence of WinGet (Windows Package Manager) on the system and, if not found, attempt its installation. Additionally, the script installs specified packages using WinGet.

## How to use
Create ```packages.txt``` which contains a list of WinGet package names to be installed.

Run ```./winget-multiple.ps1``` in PowerShell with Administrator privileges.

Also you can use ProductId from MS Store packages.

Example of ```packages.txt``` file
```
9PMMSR1CGPWG	# HEIF-PictureExtension
9MVZQVXJBQ9V	# AV1 VideoExtension
9NCTDW2W1BH8	# Raw-PictureExtension
9N95Q1ZZPMH4	# MPEG-2-VideoExtension
Waterfox.Waterfox
gerardog.gsudo
```
Thanks [@karaeren](https://gist.github.com/karaeren/5b1ca6e523231e4cbdb9ee52d5dfccf4) for Gist
