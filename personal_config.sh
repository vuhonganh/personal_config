#! /bin/bash
#File personal_config.sh : PUT THIS FILE INTO A SHELL PROVISION 

printf "\e[1;33m%s\e[0m\n" "START executing personal_config.sh file......." 

HOME_USER=/home/vagrant
CONFIG_FOLDER=${HOME_USER}/config

EMACS_FOLDER_SOURCE=${CONFIG_FOLDER}/.emacs.d
EMACS_FOLDER_DEST=${HOME_USER}/.emacs.d

EMACS_FILE_SOURCE=${CONFIG_FOLDER}/.emacs
EMACS_FILE_DEST=${HOME_USER}/.emacs

if command -v emacs > /dev/null; then
	echo "Already have emacs installed and added to PATH"
else
	echo "No emacs found in PATH, installing it now...."
	apt-get -y install emacs
fi

if [ ! -d ${CONFIG_FOLDER} ]; then
    sudo -u vagrant mkdir -p ${CONFIG_FOLDER}
fi

git clone https://github.com/vuhonganh/personal_config.git ${CONFIG_FOLDER}

if [ ! -d ${EMACS_FOLDER_DEST} ]; then	
	sudo -u vagrant cp -r ${EMACS_FOLDER_SOURCE} ${EMACS_FOLDER_DEST}
else	
	echo "Already have a .emacs.d folder, we let you do configuration manually on your own"
fi

if [ ! -e ${EMACS_FILE_DEST} ]; then
	sudo -u vagrant cp ${EMACS_FILE_SOURCE} ${EMACS_FILE_DEST}
else	
	echo "Already have a .emacs configuration file, we let you do configuration manually on your own"
fi

printf "\n\e[1;33m%s\e[0m\n" "DONE executing personal_config.sh file......."


