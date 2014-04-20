#! /bin/bash
# the simple setup.sh file for configuring ubuntu 12.04 LTS EC2 instance

# Install R
# adding a new repository from Rstudio, so we can get the latested R
sudo apt-add-repository -y "deb http://cran.rstudio.com/bin/linux/ubuntu `lsb_release -cs`/"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get -qq update
sudo apt-get install -y r-base-dev

# upgrade the other software in the repository
sudo apt-get -qq upgrade


# Install RStudio Server
# If the latest version of RStudio release, we need to change the deb to download and install
sudo apt-get install -y gdebi-core
sudo apt-get install -y libapparmor1
sudo wget http://download2.rstudio.org/rstudio-server-0.98.501-amd64.deb
sudo gdebi rstudio-server-0.98.501-amd64.deb

# Personal configuration for git
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

git config --global alias.unstage "reset HEAD"


# Install the vim as default editor
sudo apt-get install -y vim

# Personal config for bash and vim 

ln -sb MasterR/dotfiles/.bash_profile .
ln -sb MasterR/dotfiles/.bashrc .
ln -sb MasterR/dotfiles/.bashrc_custom .
ln -sb MasterR/dotfiles/.vimrc .
