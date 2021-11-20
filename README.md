# evdifix
This little script will download a fork of evdi and enable displaylink for dual monitor setup

The installer downloads a fork of evdi from aaron rancsik on github
make sure you have base-devel as well as git and linux-headers installed:
sudo pacman -S base-devel linux-headers git
then it clones the github from aaronrancsik:
git clone https://github.com/aaronrancsik/evdi-arch.git
cd evdi-arch/
makepkg -fsri
cd ..
make sure evdi is installed correctly by issuing the command:
dkms status:
evdi/1.9.1, 5.15.2-arch1-1, x86_64: installed

if you see the full name of evdi in the output, then it is installed correctly


Now using your favorite installer issue the command:
pikaur -S displaylink displaylink-connect
then reboot
