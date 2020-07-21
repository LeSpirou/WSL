@echo off
if [%~1] == [] (set distro=Debian) else set distro=%~1
wsl -t "%distro%"
set dt=%date:~8,2%%date:~3,2%%date:~0,2%%time:~0,2%%time:~3,2%
set dt=%dt: =0%
set filename=WSL-%distro%-%dt%.tar
wsl --export "%distro%" "%filename%"
move /Y "%filename%" "C:\Users\%USERNAME%\Documents\WSL Backups\%filename%"
