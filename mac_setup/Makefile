all:  directories brew apps setup_python zsh chezmoi mac_defaults

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
	brew install chezmoi
	brew install linearmouse
	brew install flameshot
	brew install --cask microsoft-teams

setup_python:
	python3 -m pip install --user --upgrade setuptools
	python3 -m pip install --user --upgrade pip

zsh:	
	curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
	sudo gem install colorls
	cd ~/Library/Fonts && { 
	curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf'
	curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf'
	curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf'
	curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf'
	cd -; }
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	export ZSH="/Users/${USER}/.oh-my-zsh"
	git clone https://github.com/romkatv/powerlevel10k.git $ZSH/themes/powerlevel10k
	zsh

chezmoi:
	chezmoi init --apply https://github.com/dphilpott-midwestern/dotfiles.git

mac_defaults:
	osascript -e 'tell application "System Preferences" to quit'
	sudo -v
	while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

	# Dock settings
	defaults write com.apple.dock "orientation" -string "bottom"
	defaults write com.apple.dock "tilesize" -int "41"
	defaults write com.apple.dock "largesize" -int "62"
	defaults write com.apple.dock "autohide" -bool "false"
	defaults write com.apple.dock "show-recents" -bool "false"
	defaults write com.apple.dock "mineffect" -string "scale"
	defaults write com.apple.dock "mouse-over-hilite-stack" -bool true
	defaults write com.apple.dock "minimize-to-application" -bool true
	defaults write com.apple.dock "enable-spring-load-actions-on-all-items" -bool true
	defaults write com.apple.dock "expose-group-by-app" -bool false
	defaults write com.apple.dock "autohide-delay" -float 0
	defaults write com.apple.dock "autohide-time-modifier" -float 0

	# Finder
	defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
	defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
	defaults write com.apple.finder "ShowPathbar" -bool "true"
	defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
	defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"
	defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0"

	# Disable the sound effects on boot
	sudo nvram SystemAudioVolume=" "

	# Disable the over-the-top focus ring animation
	defaults write NSGlobalDomain NSUseAnimatedFocusRing -bool false

	# Expand save panel by default
	defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
	defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

	# Expand print panel by default
	defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
	defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

	# Save to disk (not to iCloud) by default
	defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

	# Disable autocorrect
	defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
	defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
	defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
	defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
	defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
