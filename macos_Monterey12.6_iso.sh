hdiutil create -o /tmp/Monterey.cdr -size 14000m -layout SPUD -fs HFS+J
hdiutil attach /tmp/Monterey.cdr.dmg -noverify -mountpoint /Volumes/install_build
sudo /Applications/Install\ macOS\ Monterey.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build
mv /tmp/Monterey.cdr.dmg ~/Desktop/InstallSystem.dmg
hdiutil detach /Volumes/Install\ macOS\ Monterey
hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/Monterey12.6.iso
mv ~/Desktop/Monterey.iso.cdr ~/Desktop/Monterey12.6.iso
rm ~/Desktop/InstallSystem.dmg
