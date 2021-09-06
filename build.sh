#!/bin/bash
rm -Rf Backup.AppDir
rm appimagetool-x86_64.AppImage
wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
chmod 700 appimagetool-x86_64.AppImage
chmod 700 AppRun
mkdir Backup.AppDir
mkdir Backup.AppDir/usr
mkdir Backup.AppDir/usr/bin
cp Backup Backup.AppDir/usr/bin
cp Backup.desktop Backup.AppDir
cp AppRun Backup.AppDir
cp Backup.png Backup.AppDir
ARCH=x86_64 ./appimagetool-x86_64.AppImage Backup.AppDir