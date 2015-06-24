#!/bin/bash
<<DESCRIPTION
  This script allows to install consul on a linux server.
  The script downloads the package from bintray, creates the bin folder for the user and copies the executable to make it available 
DESCRIPTION

# Package and Download URL
URL="https://dl.bintray.com/mitchellh/consul/"
PACKAGE="0.5.2_linux_amd64.zip"

#Moving to the home folder 
cd ~

#Checking if the package already exist
if [ -e $PACKAGE ]
then
 rm -rf $PACKAGE
fi

#Download the package and extract 
wget $URL$PACKAGE
unzip $PACKAGE

#Creating bin folder and moving the executable there
mkdir -p ~/bin
mv ~/consul ~/bin/ 

rm -rf $PACKAGE
