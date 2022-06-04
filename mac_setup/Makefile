all:  temp_dirs directories brew apps setup_python zsh remove_temp_dir

directories:
	mkdir ~/temp || echo "dir 'temp' exists"
	mkdir ~/git  || echo "dir 'git' exists"
	defaults write com.apple.Finder AppleShowAllFiles true

brew:
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh > ~/temp/Homebrew_install.sh
	chmod 700 ~/temp/Homebrew_install.sh
	/bin/bash -c ~/temp/Homebrew_install.sh
	sudo chown -R ${USER} /usr/local/*

apps:
	brew install gpg
	brew upgrade gnupg 
	brew install git
	brew install --cask slack
	brew install jq
	brew install docker
	brew install python@3.10
	brew install pyenv
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
	brew install thefuck
	brew tap homebrew/cask-fonts && brew cask install font-fira-code-nerd-font

setup_python:
	python3 -m pip install --user --upgrade setuptools
	python3 -m pip install --user --upgrade pip

zsh:	
	curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
	cp ./.zshrc > ~/.zshrc
