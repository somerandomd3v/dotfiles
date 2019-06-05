# Check if Dependencies exist.
if [ -e ~/.antigen.zsh ] || [ -e ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh]
	then

	else
		chmod +x zsh-dependencies-install.sh
		./zsh-dependencies-install.sh
fi

source ~/.antigen.zsh

### Antigen

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

# Tell Antigen that you're done.
antigen apply

# Autocomplete
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

### Fancy stuff
neofetch

## Aliases

# Dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias df='dotfiles'

# I love vim too much
alias :wq='exit'
alias :q='exit'
alias v='vim'
alias sv='sudo vim'
alias ZZ='exit'
alias ZQ='exit'
