<p align="center">
  <img width="270" height="auto" src="https://user-images.githubusercontent.com/108969749/201534786-9fd914e1-fe09-456f-b56a-4082da2ae687.jpeg">
</p>


### Spesifikasi Hardware :
NODE  | CPU     | RAM      | SSD     |
| ------------- | ------------- | ------------- | -------- |
| Testnet | 4          | 8         | 120  |


### Auto install
```
wget -O wormholes.sh https://github.com/an-node/NODE-TESTNET/blob/main/Wormholes/wormholes.sh && chmod +x wormholes.sh && ./wormholes.sh
```
### Monitoring
```
wget -O wormholes.sh https://github.com/an-node/NODE-TESTNET/blob/main/Wormholes/monitor.sh && chmod +x wormholes.sh && ./wormholes.sh
```
### Next ? Become A Validator
` membutuhkan 70k ERB untuk menjadi validator `

[Validator](https://wormholes.com/docs/Install/stake/index.html)

### Node Info
 * check versi node
```
wormholes version
```
 * check logs node
```
journalctl -fu wormholesd -o cat
```
  * check private key
```
cat .wormholes/wormholes/nodekey
```
`oh iya ini harus edit privatekey secara manual, hapus dan pastekan private key lalu restart node`
```
nano .wormholes/wormholes/nodekey
```
 * restart node
```
systemctl restart wormholesd
```
### Hapus Node

```
systemctl stop wormholesd
systemctl disable wormholesd
rm -rf /usr/local/bin/wormholes
rm -rf wormholes
rm -rf wormholes.sh
rm -rf .wormholes
```
