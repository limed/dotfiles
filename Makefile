## Makefile

BASE_DIR=`pwd`
HOME_DIR=`grep ${USER} /etc/passwd | cut -d ":" -f6`

default: my_mutt my_ion3

my_environment:
	cp ${BASE_DIR}/dot/dot.bashrc ${HOME_DIR}/.bashrc
	cp ${BASE_DIR}/dot/dot.bash_aliases	${HOME_DIR}/.bash_aliases
	cp ${BASE_DIR}/dot/dot.bash_profile ${HOME_DIR}/.bash_profile
	cp ${BASE_DIR}/dot/dot.profile ${HOME_DIR}/.profile
	cp ${BASE_DIR}/dot/dot.Xdefaults ${HOME_DIR}/.Xdefaults

my_vim:
	cp ${BASE_DIR}/dot/dot.vimrc  ${HOME_DIR}/.vimrc
	if [ -d ${HOME_DIR}/.vim ]; then
		cp -pr ${BASE_DIR}/vim/* ${HOME_DIR}/.vim
	else
		mkdir ${HOME_DIR}/.vim
		cp  -pr ${BASE_DIR}/vim/* ${HOME_DIR}/.vim
	fi

my_mutt:
	@echo "Place holder"

my_ion3:
	echo "Don't use ion3 anymore, you can't use it too bad so sad"


