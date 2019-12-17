#!/bin/bash

#clean up
# echo cleaning debs
#find ./debs -type f -name '*.deb' -delete
#rm -r Packages.bz2

#packages
# dpkg-scanpackages -m ./debs > Packages
# bzip2 -fks Packages

#build debs
echo building debs
# dpkg-deb -bZlzma Projects/<projectname> <output folder>
# dpkg-deb -bZlzma /Volumes/data/Projects/Git/fastdel/.theos/_ debs
# dpkg-deb -bZlzma /Volumes/data/Projects/Git/copyvideourl/.theos/_ debs
# dpkg-deb -bZlzma /Volumes/data/Projects/Git/flightradar24/.theos/_ debs
# dpkg-deb -bZlzma /Volumes/data/Projects/Git/ToothModule/.theos/_ debs
# dpkg-deb -bZlzma /Volumes/data/Projects/Git/switcherRadiiXI/.theos/_ debs
# dpkg-deb -b /Volumes/data/Projects/Git/addrepo/.theos/_ debs

#packages
echo building Packages
dpkg-scanpackages -m ./debs > Packages

#compress
echo compressing Packages
bzip2 -fks Packages

#git
git add .

msg="rebuilding Packages"
# git commit -m "$msg"