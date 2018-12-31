
## make sure the install app ready under /Applications
when download macOS Mojave from Apple Store, it always download smaller installation app around 14MB, there are few ways to download full package before building up iso image.

### download full package using smaller installatioj app
you can click /Applications/Install macOS Mojave.app to start installation, it will download full package to /Applications/


## download script to home folder
```
oldhorses-Mac:~ oldhorse$ curl https://raw.githubusercontent.com/robertluwang/macnotes/master/macos_mojave_iso.sh -O 
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   541  100   541    0     0    686      0 --:--:-- --:--:-- --:--:--   686
```

oldhorses-Mac:~ oldhorse$ sh -x ./macos_mojave_iso.sh 
+ hdiutil create -o /tmp/Mojave.cdr -size 7000m -layout SPUD -fs HFS+J
.................................................................................................................................................................
created: /tmp/Mojave.cdr.dmg
+ hdiutil attach /tmp/Mojave.cdr.dmg -noverify -mountpoint /Volumes/install_build
/dev/disk2              Apple_partition_scheme          
/dev/disk2s1            Apple_partition_map             
/dev/disk2s2            Apple_HFS                       /Volumes/install_build
+ sudo '/Applications/Install macOS Mojave.app/Contents/Resources/createinstallmedia' --volume /Volumes/install_build
Password:
Ready to start.
To continue we need to erase the volume at /Volumes/install_build.
If you wish to continue type (Y) then press return: y
Erasing disk: 0%... 10%... 20%... 30%... 100%
Copying to disk: 0%... 10%... 20%... 30%... 40%... 50%... 60%... 70%... 80%... 
