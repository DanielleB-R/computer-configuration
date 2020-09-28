/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install aspell awscli bash bash-completion@2 coreutils curl dep docker-completion docker-compose-completion flake8 git gnu-sed go httpie hyperkit kops kubernetes-cli kubernetes-helm meld nmap node pgcli postgresql python sqlite tkdiff vim xz yamllint

brew cask install 1password dash docker dropbox drawio emacs gimp gpg-suite iterm2 keybase minikube notion postico postman puzzles quicksilver firefox slack spotify thunderbird visual-studio-code zoomus

echo /usr/local/bin/bash | sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash
mkdir ~/dev/go
export GOPATH=$HOME/dev/go
go get -u golang.org/x/lint/golint
go get -u github.com/mdempsky/gocode
go get golang.org/x/tools/cmd/goimports
go get github.com/rogpeppe/godef
go get -u github.com/kisielk/errcheck
go get github.com/mdempsky/unconvert
go get -u github.com/go-delve/delve/cmd/dlv
go get github.com/jgautheron/goconst/cmd/goconst
go get github.com/jgautheron/usedexports
go get -u github.com/alexkohler/prealloc
go get github.com/gordonklaus/ineffassig
go get github.com/fzipp/gocyclo
go get -u github.com/tsenart/deadcode
