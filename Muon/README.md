
# Intsallation Node Validator Muon


<p align="center">
  <img style="margin: auto; border-radius: 50%;" src="https://user-images.githubusercontent.com/65535542/213711680-fd483b03-6635-4f4d-8156-a1a8be79a126.png">
</p>

## Referensi
* [DOC](https://docs.muon.net/muon-network/muon-nodes/joining-the-testnet-alice/faq-for-alice#when-i-check-the-status-of-my-node-on-the-dashboard-why-do-i-see-loading-or-offline)

* [DISCORD](https://discord.gg/muon)

## Minimum Requirements

- 2vCPU 
- 4GB RAM 
- 20GB SSD
- Port 8000

## Update Package

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install curl tar wget tmux htop net-tools clang pkg-config libssl-dev jq build-essential git make ncdu docker-compose -y
```

## Open Port

```bash
ufw allow 8000
ufw enable
```

## Install Docker 
```bash
rm /usr/bin/docker-compose /usr/local/bin/docker-compose
```
```bash
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
```
```bash
systemctl restart docker
```
```bash
curl -SL https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
```
```bash
chmod +x /usr/local/bin/docker-compose
```
```bash
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
```
```bash
docker --version
```

## Clone Muon

```bash
git clone https://github.com/muon-protocol/muon-node-js.git --recurse-submodules --branch testnet
```

## Build Muon

```bash
cd muon-node-js
docker-compose build
docker-compose up -d
```

## Paste In Browser
```bash
http://<server-ip>:8000/status
```
Create New wallet & Request Faucet BSC Testnet
```bash
https://testnet.bnbchain.org/faucet-smart
```
Result
```bash
{"address":"0xDE53563cf21D5E6257BE1Ec67eCCA63dEBXXXXXXX","peerId":"QmbtJLXPQUGiJfSnbAxJXW6HPQ4bhTCRBKufSFHaexxxxx","managerContract":{"network":"bsctest","address":"0x2efB53c11FC935f6114B3fC37AaFa6a76B263a4E"},"shield":{"enable":false,"apps":[]},"addedToNetwork":false}
```

Visit -> https://alice.muon.net/join 
### Connect Wallet

![muon](https://user-images.githubusercontent.com/65535542/213710107-ee12c47a-692f-4131-a782-8ad295dd87dd.png)

### Mint Faucet Muon

![muon1](https://user-images.githubusercontent.com/65535542/213710401-cb58f64d-5c07-4edf-986e-bef31a6d21d1.png)


### Register add Node

Go to -> http://<server-ip>:8000/status

Save output

example
```bash

{"address":"0xDE53563cf21D5E6257BE1Ec67eCCA63dEBXXXXXXX","peerId":"QmbtJLXPQUGiJfSnbAxJXW6HPQ4bhTCRBKufSFHaexxxxx","managerContract":{"network":"bsctest","address":"0x2efB53c11FC935f6114B3fC37AaFa6a76B263a4E"},"shield":{"enable":false,"apps":[]},"addedToNetwork":false}
```
  
![muon3](https://user-images.githubusercontent.com/65535542/213770172-54cd5744-506a-4eb8-a666-47e8f74dac3d.png)
  
Input Node Address and peerID, and then Add Node
```bash
Node Adress : 0xDE53563cf21D5E6257BE1Ec67eCCA63dEBXXXXXXX
Peer ID : QmbtJLXPQUGiJfSnbAxJXW6HPQ4bhTCRBKufSFHaexxxxx
```
  
Please Wait......
```bash
http://<server-ip>:8000/v1/?app=tss&method=test
```

If it is added correctly, you should receive a json response whose `success` is `true`
```bash
{"success":true,"result":{"confirmed":true, ... }}
```
Restart
```bash 
docker-compose restart
```
![1](https://user-images.githubusercontent.com/96678356/217445890-3248d4d3-0874-463d-b88b-9d41824cfa93.PNG)

## Backup
```bash 
docker cp muon-node:/usr/src/muon-node-js/.env ./backup.env
```
## Restore
```bash 
docker cp backup.env muon-node:/usr/src/muon-node-js/.env
docker-compose restart
```
## Remove Docker Muon
```bash
docker ps 
sudo docker kill <id_docker_muon>
sudo docker rm kill <id_docker_muon>
```
