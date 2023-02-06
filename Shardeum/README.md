# SHARDEUM

![98940804](https://user-images.githubusercontent.com/96678356/216855731-728a1322-d22a-411e-984a-1e6dd43c16e9.png)

## Referensi
* [Website](https://www.shardeum.org/)
* [Document](https://docs.shardeum.org/node/run/validator)
* [RPC](https://docs.shardeum.org/Network/Endpoints#connect-wallet)
* [Faucet](https://docs.shardeum.org/Faucet/Claim#shardeum-faucet-website)
* [Discord](https://discord.com/invite/shardeum)


### Minimum Specification
NODE  | CPU     | RAM      | SSD     |
| ------------- | ------------- | ------------- | -------- |
| Testnet | 4          | 8         | 250  |


### Install curl
```
sudo apt-get install curl
```
### Update
```
sudo apt update
```
### Install docker
```
sudo apt install docker.io
```
### Install docker-compose
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```
### Setup permissions for docker-compose
```
sudo chmod +x /usr/local/bin/docker-compose
```
### Download and install validator
```
curl -O https://gitlab.com/shardeum/validator/dashboard/-/raw/main/installer.sh && chmod +x installer.sh && ./installer.sh
```
### Download and install validator
```
curl -O https://gitlab.com/shardeum/validator/dashboard/-/raw/main/installer.sh && chmod +x installer.sh && ./installer.sh
```
```
Do you want to run the web based Dashboard? (y/n): Y 
```
### Set a password for dashboard access:
```
Set the password to access the Dashboard: input your password
```
### Add a custom session port for the web based dashboard or hit enter for port 8080:
```
Enter the port (1025-65536) to access the web based Dashboard (default 8080): ENTER
```
### Add a custom path or install to root:
```
What base directory should the node use (defaults to ~/.shardeum):  ENTER
```
### Open validator CLI
```
cd
```
```
cd .shardeum
```
```
./shell.sh
```
```
operator-cli gui start
```
### Stake SHM
Open Browser
```
https://localhost:8080/
```
```
Input password
```
```
Select tab  'Maintenance` select `Start Node`
```
```
Claim [faucet](https://faucet-sphinx.shardeum.org/) (Input New address ERC-20)
```
```
Select 'validator' in dashboard, Select `Settings`
```
```
Connect Metamask
```
```
'Add stake` Input SHM MInimum 10 SHM for Stake
```
```
operator-cli start
```
```
operator-cli stop
```
```
operator-cli status
```
