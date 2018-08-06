if [ -e .antigen.zsh ]
then
	echo "No need to install"
else
	curl -L git.io/antigen > .antigen.zsh
fi

if [ -e .zsh/zsh-autosuggestions ]
	then
		echo "No need to install"
	else
		git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
fi
