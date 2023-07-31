/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install aspell awscli bash bash-completion@2 bat choose-rust coreutils curl delve dep docker-completion docker-compose-completion duf dust gcc git gnu-sed go graphviz httpie jq k9s kubernetes-cli kubernetes-helm nmap node pgcli postgresql python qemu sqlite ripgrep rust-analyzer tkdiff vim yamllint xz

brew cask install 1password dash dbeaver-community docker dropbox drawio emacs firefox font-fantasque-sans-mono iterm2 macdown meld minikube postman puzzles quicksilver slack spotify strawberry thunderbird visual-studio-code zoomus

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
go get github.com/jgautheron/goconst/cmd/goconst
go get github.com/jgautheron/usedexports
go get -u github.com/alexkohler/prealloc
go get github.com/gordonklaus/ineffassig
go get github.com/fzipp/gocyclo
go get -u github.com/tsenart/deadcode
