# SHARDEUM

![98940804](https://user-images.githubusercontent.com/96678356/216855731-728a1322-d22a-411e-984a-1e6dd43c16e9.png)


### Spesifikasi Hardware :
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
### Go to your web browser and go to:
```
https://localhost:8080/
```
