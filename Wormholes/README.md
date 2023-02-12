<p align="center">
  <img width="270" height="auto" src="https://user-images.githubusercontent.com/108969749/201534786-9fd914e1-fe09-456f-b56a-4082da2ae687.jpeg">
</p>

# Update Wormholes v.0.12.0
Especially for new VPS, this method does not apply to updates on previous VPS where there is already a worm node

[NEW REGISTER](https://twitter.com/WormholesChain/status/1622533966782955520?t=Vr_iyHqOEDsPTeUUiBhkLQ&s=19)

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
OR Just Paste on CLI
```
#!/bin/bash
function info(){
     cn=0
     while true
     do
             echo "$cn second."
             echo "node $1"
             rs=`curl -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_blockNumber","id":64}' https://api.wormholestest.com 2>/dev/null`
             blockNumbers=$(parse_json $rs "result")
             echo "Block height of the whole network: $((16#${blockNumbers:2}))"
             rs1=`curl -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"net_peerCount","id":64}' 127.0.0.1:$1 2>/dev/null`
             count=$(parse_json $rs1 "result")
             echo "Number of node connections: $((16#${count:2}))"
             rs2=`curl -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_blockNumber","id":64}' 127.0.0.1:$1 2>/dev/null`
             blckNumber=$(parse_json $rs2 "result")
             echo "Block height of the current peer: $((16#${blckNumber:2}))"
             sleep 5
             clear
             let cn+=5
     done
}

function parse_json(){
      if [[ $# -gt 1 ]] && [[ $1 =~ $2 ]];then
         echo "${1//\"/}"|sed "s/.*$2:\([^,}]*\).*/\1/"
      else
         echo "0x0"
     fi
}

function main(){
     if [[ $# -eq 0 ]];then
             info 8545
     else
             info $1
     fi
}

main "$@"
```
### Result

![Result](https://user-images.githubusercontent.com/96678356/218034065-09a84bf4-64c9-472d-b96c-4e760ca8f48c.PNG)

### Stake ERB in [Wallet](https://www.limino.com/#/wallet)
- More Setting
- Select Become Validator
- Stake 70000 ERB
- Monitor Stake in [Explorer](https://www.wormholesscan.com/)

### Additional If have 700 ERB Stake SNFT in [Wallet](https://www.limino.com/#/wallet)
- More Setting
- Select Marketplace Management
- Select Staking & Redemtion
- Stake 700 ERB
- Monitor Stake in [Explorer](https://www.wormholesscan.com/)

### Delete Node
```
systemctl stop wormholesd
systemctl disable wormholesd
rm -rf /usr/local/bin/wormholes
rm -rf wormholes
rm -rf wormholes.sh
rm -rf .wormholes
```
