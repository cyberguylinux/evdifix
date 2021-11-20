  GNU nano 5.9                                                                            cyberguylinux.sh                                                                            Modified  
#! /bin/bash

# Enable multilib in arch by editing /etc/pacman.conf and scroll down to where you see #[multilib] and removing the # from both lines
#then update your cache by issuing:
sudo pacman -Syy

# Install linux-headers and git as well as base-devel

sudo pacman -S base-devel git linux-headers

# Install pikaur in arch for installing additional software
git clone https://aur.archlinux.org/pikaur.git
cd pikaur/
makepkg -fsri
cd..


# clone aaronrancsik from github
git clone https://github.com/aaronrancsik/evdi-arch.git
cd evdi-arch
makepkg -fsri
echo "Making sure evdi is installed correctly:"
dkms status
cd ..

## Install displaylink and displaylink-connect
pikaur -S displaylink displaylink-connect       # <---- You can replace this with whichever installer you use (i.e pamac,etc)









^G Help          ^O Write Out     ^W Where Is      ^K Cut           ^T Execute       ^C Location      M-U Undo         M-A Set Mark     M-] To Bracket   M-Q Previous     ^B Back
^X Exit          ^R Read File     ^\ Replace       ^U Paste         ^J Justify       ^/ Go To Line    M-E Redo         M-6 Copy         ^Q Where Was     M-W Next         ^F Forward
