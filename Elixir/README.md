<p align="center">
  <img width="270" height="auto" src="https://user-images.githubusercontent.com/108969749/201534786-9fd914e1-fe09-456f-b56a-4082da2ae687.jpeg">
</p>

# Install Validator Elixir Protocol

[WEBSITE](https://elixir.finance/)
[DOCS](https://docs.elixir.finance/)
[EXPLORER](https://metrics.elixir.finance/)
[DISCORD](https://discord.gg/Zxu9xhEN)

### Spesifikasi Hardware :
NODE  | CPU     | RAM      | SSD     |
| ------------- | ------------- | ------------- | -------- |
| Testnet | 2          | 4         | 50  |

### Install Docker [Skip if you previously installed docker on a different node]
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y </dev/null && sudo chmod 666 /var/run/docker.sock
```
### Create New Wallet EVM

### Download Dockerfile
```
wget https://testnet-1-files.elixir.finance/Dockerfile
```
### Edit Dockerfile
```
nano Dockerfile
```
### Input Wallet & PrivateKey

### Update Worm
```
wget -O wormholes_install.sh https://docker.wormholes.com/wormholes_install.sh && chmod +x wormholes_install.sh && ./wormholes_install.sh
```
### Input Private Key
```
### Ctrl X + y
```
### Build Screen 
```
apt install screen -y
```
### Add Screen 
```
screen -R elixir
```
### Build docker
```
docker build . -f Dockerfile -t elixir-validator
```
### Update docker
```
docker kill ev
docker rm ev
docker pull elixirprotocol/validator:testnet-1
docker build . -f Dockerfile -t elixir-validator
```
### Check logs
```
docker logs -f ev
```
### Register Wallet to [DISCORD](https://discord.gg/Zxu9xhEN)


