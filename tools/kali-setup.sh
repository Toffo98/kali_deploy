# If you dont want to enter the sudo password
echo '%sudo ALL=(ALL) NOPASSWD: ALL' | sudo tee --append /etc/sudoers

# Change Screen Resolution
sudo xrandr --output Virtual-1 --mode 1920x1080  --rate 60

# Update
echo 'deb https://http.Kali.org/Kali Kali-rolling main non-free contrib
deb-sources https://http.Kali.org/Kali Kali-rolling main non-free contrib' > /etc/apt/sources.list
echo 'deb https://deb.torproject.org/torproject.org stretch main
deb-src https://deb.torproject.org/torproject.org stretch main' > /etc/apt/sources.list.d/tor.list
sudo apt update && sudo apt full-upgrade -y

# Clean
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean -y

# Fix Broke Dependecies
sudo apt install -f -y

# Setup Italian Language
sudo localectl set-locale LANG=it_IT.UTF-8

# Setup Italian Keyboard Layout
sudo setxkbmap -layout it

# Install GIT
sudo apt-get install git

# Install Tilix (https://github.com/gnunn1/tilix.git)
sudo apt-get install tilix

# Install the Gnome Task Manager
sudo apt install gnome-system-monitor -y

# Install Wine (run winecfg after installation)
sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install wine winbind

# Install PIP
sudo apt update && sudo apt install python3-pip

# Install OpenVAS (Start with sudo gvm-start)
sudo apt install openvas && sudo gvm-setup

# Install Armitage
sudo apt install armitage

# Install Tor Project
wget -O- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | sudo apt-key add -
sudo apt-get update && sudo apt-get install tor deb.torproject.org-keyring

