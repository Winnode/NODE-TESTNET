![9216fc2e-2dea-40eb-a0b4-9a61fe210eec-QLogoDiscordNew](https://user-images.githubusercontent.com/96678356/223128842-45a9002c-1bea-49d4-a2d8-b4d14279c1b5.gif)


# Install Q-Blockchain

[Docs](https://docs.qtestnet.org/how-to-setup-validator/)

[Faucet](https://faucet.qtestnet.org/)

[Explorer](https://explorer.qtestnet.org/)

[Validator](https://stats.qtestnet.org/)

## Minimum Spec Hardware :
NODE  | CPU     | RAM      | SSD     | OS     |
| ------------- | ------------- | ------------- | -------- | -------- |
| Q Block | 4          | 4         | 500  | Ubuntu 20.04 LTS  |


### Dependensi

```
apt install git docker docker-compose
```

### Q-Blockchain

```
git clone https://gitlab.com/q-dev/testnet-public-tools.git
```

```
cd testnet-public-tools/testnet-validator
```

```
mkdir keystore
```

```
nano keystore/pwd.txt
```
```
cat keystore/pwd.txt
```

### Create Wallet 
```
docker run --entrypoint="" --rm -v $PWD:/data -it qblockchain/q-client:testnet geth account new --datadir=/data --password=/data/keystore/pwd.txt
```
```
Your new key was generated

Public address of the key:   0xb3FF24F818b0ff6Cc50de951bcB8f86b52287dac
Path of the secret key file: /data/keystore/UTC--2021-01-18T11-36-28.705754426Z--b3ff24f818b0ff6cc50de951bcb8f86b52287dac

- You can share your public address with anyone. Others need it to interact with you.
- You must NEVER share the secret key with anyone! The key controls access to your funds!
- You must BACKUP your key file! Without the key, it's impossible to access account funds!
- You must REMEMBER your password! Without the password, it's impossible to decrypt the key!
```


### Claim faucet

Pergi ke [sini](https://faucet.qtestnet.org/) 


### Edit.env`

```
nano .env
```

### Edit `config.json`

Jalankan perintah ini

```
nano config.json
```

Example:

```js
{
  "address": "ganti addressmu + hapus 0x didepan",
  "password": "Passwordmu",
  "keystoreDirectory": "/data",
  "rpc": "https://rpc.qtestnet.org"
}

```
### Move stake to validator contract

```
docker run --rm -v $PWD:/data -v $PWD/config.json:/build/config.json qblockchain/js-interface:testnet validators.js
```
### Register Validator
```
nano docker-compose.yaml
```
Example :
```
"--ethstats=NAMA_VALIDATOR:TESTNET_ACCESS_KEY@stats.qtestnet.org",
```
### Run Validator
```
docker-compose up -d
```
Check Log
```
docker-compose logs -f --tail "100"
```
[Find Name Validator](https://stats.qtestnet.org/)

### Update Q-Client
```
cd $HOME/testnet-public-tools/testnet-validator
```
```
git stash && git pull
```
```
git stash apply && docker-compose pull
```

### Restart Docker
```
docker-compose up -d
```
## Update
```
cd /var/lib/docker/volumes/testnet-validator_testnet-validator-node-data/_data/geth/chaindata/
```
### Download 
```
wget -O - https://snapshots.stakecraft.com/q-testnet_2023-02-23.tar | tar xf -
```
### Restart Node
```
cd $HOME/testnet-public-tools/testnet-validator && docker-compose down && docker-compose up -d
```
### Check logs
```
docker-compose logs -f --tail "100"
```
### Check Status Node 
```
[Check](https://itn.qdev.li/ ) connect metamask
```
