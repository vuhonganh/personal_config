#! /bin/bash
#File personal_config.sh : PUT THIS FILE INTO A SHELL PROVISION 

printf "\e[1;33m%s\n\e[0m" "START executing personal_config.sh file......." 

HOME_USER=/home/vagrant
CONFIG_FOLDER=${HOME_USER}/config

EMACS_FOLDER_SOURCE=${CONFIG_FOLDER}/.emacs.d
EMACS_FOLDER_DEST=${HOME_USER}/.emacs.d

EMACS_FILE_SOURCE=${CONFIG_FOLDER}/.emacs
EMACS_FILE_DEST=${HOME_USER}/.emacs


if [ ! -d ${CONFIG_FOLDER} ]; then
    sudo -u vagrant mkdir -p ${CONFIG_FOLDER}
fi

git clone https://github.com/vuhonganh/personal_config.git ${CONFIG_FOLDER}

if [ ! -d ${EMACS_FOLDER_DEST} ]; then	
	sudo -u vagrant cp -r ${EMACS_FOLDER_SOURCE} ${EMACS_FOLDER_DEST}
fi

if [ ! -e ${EMACS_FILE_DEST} ]; then
	sudo -u vagrant cp ${EMACS_FILE_SOURCE} ${EMACS_FILE_DEST}
fi

printf "\n\e[1;33m%s\n\e[0m" "DONE executing personal_config.sh file......."


