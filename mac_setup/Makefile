all:  directories brew apps setup_python zsh

directories:
	mkdir ~/temp || echo "dir 'temp' exists"
	mkdir ~/git  || echo "dir 'git' exists"
	defaults write com.apple.Finder AppleShowAllFiles true

brew:
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh > ~/temp/Homebrew_install.sh
	chmod 700 ~/temp/Homebrew_install.sh
	/bin/bash -c ~/temp/Homebrew_install.sh
	(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/${USER}/.zprofile
	eval "$(/opt/homebrew/bin/brew shellenv)"

apps:
	brew install git
	brew install --cask slack
	brew install docker
	brew install python@3.11
	brew install pyenv
	sudo softwareupdate --install-rosetta
	brew install --cask snowflake-snowsql
	brew install awscli
	brew install --cask hammerspoon
	brew install --cask caffeine
	brew install terraform
	brew install terragrunt
	brew install --cask sublime-text
	brew install --cask sublime-merge
	brew install --cask pycharm
	brew install --cask postman
	brew install --cask firefox
	brew install --cask iterm2
	brew install --cask meld
	brew install --cask barrier
	brew install --cask dropbox
	brew install ruby
	brew install thefuck
	brew install ferdium
	brew install --cask hiddenbar
	brew tap homebrew/cask-fonts && brew install --cask font-fira-code-nerd-font
	brew tap homebrew/cask-fonts && brew install --cask font-dejavu-sans-mono-nerd-font
	brew install --cask karabiner-elements

setup_python:
	python3 -m pip install --user --upgrade setuptools
	python3 -m pip install --user --upgrade pip

zsh:	
	curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
	sudo gem install colorls
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	export ZSH="/Users/${USER}/.oh-my-zsh"
	git clone https://github.com/romkatv/powerlevel10k.git $ZSH/themes/powerlevel10k
	cp ./.zshrc ~/.zshrc
	zsh
