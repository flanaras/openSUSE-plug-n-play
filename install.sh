#! /usr/bin/sh

REPO_VLC=http://download.videolan.org/pub/vlc/SuSE/Leap_42.1
REPO_VLC=http://download.videolan.org/pub/vlc/SuSE/Tumbleweed
REPO_X2GO=http://download.opensuse.org/repositories/X11:/RemoteDesktop:/x2go/openSUSE_Leap_42.1
REPO_X2GO=http://download.opensuse.org/repositories/X11:/RemoteDesktop:/x2go/openSUSE_Tumbleweed
REPO_MAVEN=http://download.opensuse.org/repositories/devel:/tools:/building/openSUSE_Leap_42.1
REPO_MAVEN=http://download.opensuse.org/repositories/devel:/tools:/building/openSUSE_Factory

GIT_REPO_SPOTIFY=https://github.com/flanaras/opensuse-spotify-installer

DL_PACKAGE_XNVIEW=http://download.xnview.com/XnViewMP-linux.x86_64.rpm
DL_PACKAGE_CHROME=https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
DL_PACKAGE_VIBER=http://download.cdn.viber.com/desktop/Linux/viber.rpm
DL_PACKAGE_SKYPE=https://download.skype.com/linux/skype-4.3.0.37-suse.i586.rpm
DL_PACKAGE_TEAMVIEWER=http://download.teamviewer.com/download/teamviewer.i686.rpm

FILENAME_XNVIEW=XnViewMP-linux.x86_64.rpm
FILENAME_CHROME=google-chrome-stable_current_x86_64.rpm
FILENAME_VIBER=viber.rpm
FILENAME_SKYPE=skype-4.3.0.37-suse.i586.rpm
FILENAME_TEAMVIEWER=teamviewer.i686.rpm

DL_COMPRESSED_ANDROID_STUDIO=https://dl.google.com/dl/android/studio/ide-zips/2.1.2.0/android-studio-ide-143.2915827-linux.zip
DL_COMPRESSED_ANDROID_SDK=https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
DL_COMPRESSED_INTELLIJ=https://download-cf.jetbrains.com/idea/ideaIU-2016.1.3.tar.gz

# Refresh before doing anything
sudo zypper ref

## Git is needed for some applications
# We love and need git
sudo zypper in git

echo "[alias]
	network = log --all --graph --decorate --oneline
	fa = fetch --all
	s = status
[diff]
	tool = vimdiff" >> ~/.gitconfig


##### ----- Personal touches ----- #####
# Adding a better font experience for our Linux environment
sudo zypper in fetchmsttfonts

# Add Arc-Flatabulous theme
sudo zypper in gtk3-devel autoconf automake
git clone https://github.com/andreisergiu98/arc-flatabulous-theme && cd arc-flatabulous-theme
./autogen.sh --prefix=/usr
sudo make install

# Install fish shell
sudo zypper in fish
chsh -s /usr/bin/fish `whoami`

# Pomodoro
suzo zypper in gnome-pomodoro

## -- Media

# We can't do anything without vlc
sudo zypper rm vlc*
sudo zypper ar $REPO_VLC VLC
sudo zypper mr -r VLC
sudo zypper in vlc

# Equalizer
sudo zypper in pulseaudio-equalizer

# A nice pdf viewer, I like more this than the default one
sudo zypper in okular
# KDE base is needed to load correctly the icons (I guess this could be done by installing the oxygen* icon pack and fonts)
sudo zypper in -t pattern kde

# Image viewer XnView
wget $DL_PACKAGE_XNVIEW
sudo zypper in XnViewMP-linux.x86_64.rpm
rm XnViewMP-linux.x86_64.rpm

# Spotify
# https://github.com/flanaras/opensuse-spotify-installer
git clone $GIT_REPO_SPOTIFY
./opensuse-spotify-installer/install-spotify.sh
rm -rf opensuse-spotify-installer


## -- Browsers

# Opera, for an alternative of firefox
sudo zypper in opera

# Chrome, when flash is necessary
wget $DL_PACKAGE_CHROME
sudo zypper in $FILENAME_CHROME
rm $FILENAME_CHROME


## -- Messaging
wget $DL_PACKAGE_VIBER
sudo zypper in $FILENAME_VIBER
rm $FILENAME_VIBER

# Skype, TODO: crawler 
wget $DL_PACKAGE_SKYPE
sudo zypper in $FILENAME_SKYPE
rm $FILENAME_SKYPE

# Whatsie
# https://github.com/Aluxian/Whatsie/releases

## Other

# flux?
# No need.

# vmware?




##### ----- Work touches ----- #####


## -- Tools

# Dropbox
sudo zypper in dropbox

# RemoteDesktopConnection
sudo zypper ar $REPO_X2GO x2go
sudo zypper mr -r x2go
sudo zypper in x2goclient
# If remote server is Windows the rdesktop is needed
sudo zypper in rdesktop

# Mail Client (Thunderbird)
sudo zypper in MozillaThunderbird

# TeamViewer
wget $DL_PACKAGE_TEAMVIEWER
sudo zypper in $FILENAME_TEAMVIEWER
rm $FILENAME_TEAMVIEWER

# FileZilla
# pick repository
# https://software.opensuse.org/package/filezilla
# filezilla exists in tumbleweed repository
sudo zypper in filezilla

# iostat
sudo zypper in sysstat

# Git is needed earlier, but this is its location

# Make and patch are useful, I'm not a c[make] person...
sudo zypper in make patch

# Maven
sudo zypper ar $REPO_MAVEN devel:tools:building
sudo zypper mr -r devel:tools:building
sudo zypper in maven

# Nano is useful
sudo zypper in nano

# Tex and TexMaker can be necessary, although it is highly possible
# that more that the standard packages will be needed
sudo zypper in texlive
sudo zypper in texmaker
#sudo zypper in texlive* # Not the best solution but the easiest

# gcc, what do you need from gcc??
# zypper in gcc


## -- IDEs
# IntelliJ
wget $DL_COMPRESSED_INTELLIJ
printf "Unpack and Install IntellJ by yourself, not automated!\n"


## -- Android
# Download Android SDK
wget $DL_COMPRESSED_ANDROID_SDK

# Download Android Studio
wget $DL_COMPRESSED_ANDROID_STUDIO

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

## NetBIOS
# 1. allow "Samba Client" service in firewall //allows nmblookup to work
# 2. edit /etc/nsswitch.conf and add wins option
#	hosts:	files mdns_minimal [NOTFOUND=return] dns wins
# 	To ping enter netbiosname.local
#	An other helpful program is nmblookup to search about a netbios name (without ".local")
#		nmblookup name
#		nmblookup -A xxx.xxx.xxx.xxx




######## -------- Refresh and update packages -------- ########

sudo zypper ref
sudo zypper up
