#!/bin/bash

# golang
# installing Golang v1.19
(echo ""; echo "##### Golang v19x #####"; echo "";)
wget https://golang.org/dl/go1.19.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz
echo "" | sudo tee -a ~/.bashrc
echo "export PATH=\$PATH:/usr/local/go/bin" | sudo tee -a ~/.bashrc
echo "" | sudo tee -a ~/.zshrc
echo "export PATH=\$PATH:/usr/local/go/bin" | sudo tee -a ~/.zshrc
echo "" | sudo tee -a ~/.bashrc
echo "export PATH=\$PATH:\$HOME/go/bin" | sudo tee -a ~/.bashrc
echo "" | sudo tee -a ~/.zshrc
echo "export PATH=\$PATH:\$HOME/go/bin" | sudo tee -a ~/.zshrc
rm go1.19.linux-amd64.tar.gz

# install golang extension tools
export GOPATH=$HOME/go
go install -v golang.org/x/tools/gopls@latest
go install -v github.com/go-delve/delve/cmd/dlv@latest
go install -v honnef.co/go/tools/cmd/staticcheck@latest
go install -v github.com/cweill/gotests/gotests@latest
go install -v github.com/fatih/gomodifytags@latest
go install -v github.com/josharian/impl@latest
go install -v github.com/haya14busa/goplay/cmd/goplay@latest
go install -v github.com/ramya-rao-a/go-outline@latest
go install -v github.com/rogpeppe/godef@latest
go install -v github.com/golangci/golangci-lint/cmd/golangci-lint@latest
