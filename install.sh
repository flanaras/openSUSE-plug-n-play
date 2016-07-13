#! /usr/bin/sh

sudo zypper ref

## Git is needed for some applications
#We love and need git
sudo zypper in git

##### ----- Personal touches ----- #####
# Adding a better font experience for our Linux environment
sudo zypper in fetchmsttfonts



## -- Media

# We can't do anything without vlc
sudo zypper rm vlc*
# zypper ar http://download.videolan.org/pub/vlc/SuSE/Leap_42.1 VLC
# for tumbleweed
sudo zypper ar http://download.videolan.org/pub/vlc/SuSE/Tumbleweed VLC
sudo zypper mr -r VLC
sudo zypper in vlc

# A nice pdf viewer, I like more this than the default one
sudo zypper in okular

# Image viewer
wget http://download.xnview.com/XnViewMP-linux.x86_64.rpm
sudo zypper in XnViewMP-linux.x86_64.rpm
rm XnViewMP-linux.x86_64.rpm

# Spotify
# https://github.com/flanaras/opensuse-spotify-installer
git clone https://github.com/flanaras/opensuse-spotify-installer
./opensuse-spotify-installer/install-spotify.sh
rm -rf opensuse-spotify-installer


## -- Browsers

# Opera, for an alternative of firefox
sudo zypper in opera

# Chrome, when flash is necessary
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo zypper in google-chrome-stable_current_x86_64.rpm
rm google-chrome-stable_current_x86_64.rpm


## -- Messaging
wget http://download.cdn.viber.com/desktop/Linux/viber.rpm
sudo zypper in viber.rpm
rm viber.rpm

# Skype, ToDo: crawler 
wget https://download.skype.com/linux/skype-4.3.0.37-suse.i586.rpm
sudo zypper in skype-4.3.0.37-suse.i586.rpm
rm skype-4.3.0.37-suse.i586.rpm

# Whatsie
# https://github.com/Aluxian/Whatsie/releases

## Other

# flux?

# vmware?




##### ----- Work touches ----- #####

## -- Tools

# Dropbox
sudo zypper in dropbox

# RemoteDesktopConnection
#sudo zypper ar http://download.opensuse.org/repositories/X11:/RemoteDesktop:/x2go/openSUSE_Leap_42.1 x2go
sudo zypper ar http://download.opensuse.org/repositories/X11:/RemoteDesktop:/x2go/openSUSE_Tumbleweed x2go
sudo zypper mr -r x2go
sudo zypper in x2goclient
# If remote server is Windows the rdesktop is needed
sudo zypper in rdesktop

# Mail Client (Thunderbird)
sudo zypper in MozillaThunderbird

# TeamViewer
wget http://download.teamviewer.com/download/teamviewer.i686.rpm
sudo zypper in teamviewer.i686.rpm
rm teamviewer.i686.rpm

# FileZilla
# pick repository
# https://software.opensuse.org/package/filezilla

# iostat
sudo zypper in sysstat

# Git is needed earlier :D

# Make and patch are useful, I'm not a c[make] person...
sudo zypper in make patch

# Nano is useful
sudo zypper in nano

# Tex and TexMaker can be necessary, although it is highly possible
# that more that the standard packages will be needed
#sudo zypper in texlive
#sudo zypper in texmaker
#sudo zypper in texlive* # Not the best solution but the easiest

# gcc, what do you need from gcc??
# zypper in gcc

## -- IDEs
# IntelliJ
wget https://download-cf.jetbrains.com/idea/ideaIU-2016.1.3.tar.gz
printf "Unpack and Install IntellJ by yourself, not automated!\n"


## -- Android
# Download Android SDK
wget https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz

# Download Android Studio
wget https://dl.google.com/dl/android/studio/ide-zips/2.1.2.0/android-studio-ide-143.2915827-linux.zip

print "Setup Android*! \n"


##### ----- Work touches ----- #####
# Tools missing for a kernel build
sudo zypper in multipath-tools ncureses-devel

######## -------- System Settings -------- ########

## Add custom scripts

# keyboard lights

# fan profile

#### Gnome

# Main menu editor is not installed by default
sudo zypper in alacarte

# Add keyboard languages

## Add key shortcuts (files, terminal, etc), I know, Windows-like shortcuts
# open nautilus, win + e
# open gnome-terminal, win + r
# open settings, win + x
# killall nautilus, ctrl + alt + e

# Disable animations

# Set fonts

# Install gnome extensions

# Disable sleep on lid-close



