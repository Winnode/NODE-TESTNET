#!/bin/bash

#update package
sudo apt update && sudo apt list --upgradable && sudo apt upgrade -y

#install library
sudo apt install curl tar wget clang pkg-config libssl-dev jq build-essential git make ncdu net-tools -y

#install go
ver="1.19" && \
wget "https://golang.org/dl/go$ver.linux-amd64.tar.gz" && \
sudo rm -rf /usr/local/go && \
sudo tar -C /usr/local -xzf "go$ver.linux-amd64.tar.gz" && \
rm "go$ver.linux-amd64.tar.gz" && \
echo "export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin" >> $HOME/.bash_profile && \
source $HOME/.bash_profile && \
go version

#install binary
cd $HOME
git clone https://github.com/wormholes-org/wormholes
cd wormholes
make wormholes
mv build/bin/wormholes /usr/local/bin

#create service
tee /etc/systemd/system/wormholesd.service > /dev/null <<EOF
[Unit]
Description=wormholes
After=online.target
[Service]
Type=simple
User=$USER
WorkingDirectory=$HOME
ExecStart= /usr/local/bin/wormholes \
  --datadir $HOME/.wormholes \
  --devnet \
  --mine \
  --miner.threads 1 \
  --rpc \
  --rpccorsdomain "*" \
  --rpcvhosts "*" \
  --http \
  --rpcaddr 127.0.0.1 \
  --rpcport 8545 \
  --port 30303 \
  --maxpeers 50 \
  --syncmode full
Restart=on-failure
RestartSec=5
LimitNOFILE=4096
[Install]
WantedBy=multi-user.target
EOF

#start service
sudo systemctl daemon-reload
sudo systemctl enable wormholesd
sudo systemctl restart wormholesd

sleep 10

NODE_KEY=$(cat $HOME/.wormholes/wormholes/nodekey)
echo -e "Your privatekey: \e[32m$NODE_KEY\e[39m"