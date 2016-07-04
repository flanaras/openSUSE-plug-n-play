#! /usr/bin/sh

zypper ref

##### ----- Personal touches ----- #####
# Adding a better font experience for our Linux environment
zypper in fetchmsttfonts



## -- Media

# We can't do anything without vlc
zypper rm vlc*
zypper ar http://download.videolan.org/pub/vlc/SuSE/Leap_42.1 VLC
zypper mr -r VLC
zypper in vlc

# A nice pdf viewer, I like more this than the default one
zypper in okular

# Image viewer
wget http://download.xnview.com/XnViewMP-linux.x86_64.rpm
zypper in XnViewMP-linux.x86_64.rpm
rm XnViewMP-linux.x86_64.rpm

# Spotify
# https://github.com/flanaras/opensuse-spotify-installer


## -- Browsers

# Opera, for an alternative of firefox
zypper in opera

# Chrome, when flash is necessary
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
zypper in google-chrome-stable_current_x86_64.rpm
rm google-chrome-stable_current_x86_64.rpm


## -- Messaging
wget http://download.cdn.viber.com/desktop/Linux/viber.rpm
zypper in viber.rpm
rm viber.rpm

# Skype, ToDo: crawler 
wget https://download.skype.com/linux/skype-4.3.0.37-suse.i586.rpm
zypper in skype-4.3.0.37-suse.i586.rpm
rm skype-4.3.0.37-suse.i586.rpm

# Whatsie
# https://github.com/Aluxian/Whatsie/releases

## Other

# flux?

# vmware?




##### ----- Work touches ----- #####

## -- Tools

# Dropbox
zypper in dropbox

# RemoteDesktopConnection
zypper ar http://download.opensuse.org/repositories/X11:/RemoteDesktop:/x2go/openSUSE_Leap_42.1 x2go
zypper mr -r x2go
zypper in x2goclient
# If remote server is Windows the rdesktop is needed
zypper in rdesktop

# Mail Client (Thunderbird)
install MozillaThunderbird

# TeamViewer
wget http://download.teamviewer.com/download/teamviewer.i686.rpm
zypper in teamviewer.i686.rpm
rm teamviewer.i686.rpm

# FileZilla
# pick repository
# https://software.opensuse.org/package/filezilla

# iostat
zypper in sysstat

# We love and need git
zypper in git

# Make and patch are useful, I'm not a c[make] person...
zypper in make patch

# Tex and TexMaker can be necessary, although it is highly possible
# that more that the standard packages will be needed
zypper in texlive
zypper in texmaker
zypper in texlive* % Not the best solution but the easiest

# gcc, what do you need from gcc??
# zypper in gcc

## -- IDEs
# IntelliJ
wget https://download-cf.jetbrains.com/idea/ideaIU-2016.1.3.tar.gz
printf "Unpack and Install IntellJ by yourself, not yet automated! \n"


## -- Android
# Download Android SDK
wget https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz

# Download Android Studio
wget https://dl.google.com/dl/android/studio/ide-zips/2.1.2.0/android-studio-ide-143.2915827-linux.zip

print "Setup Android*! \n"


##### ----- Work touches ----- #####
# Tools missing for a kernel build
zypper in multipath-tools ncureses-devel

######## -------- System Settings -------- ########

## Add custom scripts

# keyboard lights

# fan profile

#### Gnome

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



