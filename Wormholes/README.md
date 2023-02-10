<p align="center">
  <img width="270" height="auto" src="https://user-images.githubusercontent.com/108969749/201534786-9fd914e1-fe09-456f-b56a-4082da2ae687.jpeg">
</p>

# Update Wormholer v.0.12.0

### Spesifikasi Hardware :
NODE  | CPU     | RAM      | SSD     |
| ------------- | ------------- | ------------- | -------- |
| Testnet | 4          | 8         | 120  |

### Stop Docker & Delete
```
docker stop wormholes && docker rm wormholes && docker rmi wormholestech/wormholes:v1
```
### Delete worm sh
```
rm -rf wormholes_install.sh
```
### Delete Folder
```
rm -rf /wm/
```
### Update Worm
```
wget -O wormholes_install.sh https://docker.wormholes.com/wormholes_install.sh && chmod +x wormholes_install.sh && ./wormholes_install.sh
```
### Input Private Key
```
input private key
```
### Check Version
```
docker exec -it wormholes ./wormholes version|grep "Version"|grep -v go
```
### Result
```
wormholes v0.12.0
```
### RUN
```
./monitor.sh
```
OR 
```
wget -O monitor.sh https://raw.githubusercontent.com/dwentz-inc/node-testnet/main/wormholeschain/monitor.sh && chmod +x monitor.sh && ./monitor.sh
```
### Delete Node
```
systemctl stop wormholesd
systemctl disable wormholesd
rm -rf /usr/local/bin/wormholes
rm -rf wormholes
rm -rf wormholes.sh
rm -rf .wormholes
```
