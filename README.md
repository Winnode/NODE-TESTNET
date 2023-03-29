# Tutorial Stader Node ETHx Rolling beta


<p align="center">
  <img height="auto" width="auto" src="https://raw.githubusercontent.com/bayy420-999/airdropfind/main">
</p>

## Referensi

* [Testnet Announcement](https://blog.staderlabs.com/launching-ethx-rolling-beta-on-goerli-testnet-for-permissionless-node-operators-56cf15d05255)
* [Dokumen resmi](https://staderlabs.notion.site/staderlabs/ETHx-Rolling-beta-Support-Guide-3039a5cbf7c449e3982aa7dbd6c68199)
* [Website](https://www.staderlabs.com/)
* [Server discord](https://discord.gg/staderlabs)
* [Twitter](https://twitter.com/staderlabs)

## Spesifikasi Software & Hardware

### Persyaratan Hardware

| Komponen | Spesifikasi minimal |
|----------|---------------------|
|CPU|4 Cores|
|RAM|16 GB DDR4 RAM|
|Penyimpanan|2 TB HDD|
|Koneksi|10Mbit/s port|

| Komponen | Spesifikasi rekomendasi |
|----------|---------------------|
|CPU|32 Cores|
|RAM|32 GB DDR4 RAM|
|Penyimpanan|2 x 1 TB NVMe SSD|
|Koneksi|1 Gbit/s port|

### Persyaratan Software/OS

| Komponen | Spesifikasi minimal |
|----------|---------------------|
|Sistem Operasi|Ubuntu 16.04|

| Komponen | Spesifikasi rekomendasi |
|----------|---------------------|
|Sistem Operasi|Ubuntu 22.04|

## Setup Node

### Install docker

Jika kalian kalian pernah ikut Q-Blockchain dan testnet node lainnya kemungkinan kalian sudah pernah install docker, jadi bisa skip langkah ini.

1. Update `apt-get` dan install paket yang diperlukan
   ```console
   sudo apt-get update
   sudo apt-get install \
     ca-certificates \
     curl \
     gnupg \
     lsb-release
   ```
2. Tambahkan kunci GPG docker
   ```console
   sudo mkdir -p /etc/apt/keyrings
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
   ```
3. Setup repositori
   ```console
   echo \
   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   ```
4. Install docker
   ```console
   sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
   ```
5. Cek apakah docker sudah terinstall dengan benar
   ```console
   sudo docker run hello-world
   ```

### Install Node
1. Download Node
   ```console
   wget https://dub.sh/linuxamd64 -O ~/bin/stader-cli
   ```
2. Masuk ke direktori bin
   ```console
   cd $HOME/bin
   ```
3. Ubah file menjadi executable
   ```console
   chmod +x ~/bin/stader-cli
   ```
4. Restart terminal
   ```console
   bash
   ```
5. Install service
   ```console
   ~/bin/stader-cli --allow-root service install
   ```
6. Jalankan Node wizard
   ```console
   ~/bin/stader-cli --allow-root service config
   ```
   Nanti akan muncul menu GUI, kalian ikuti aja step-stepnya, pake arrow keys di keyboard buat navigasi & enter buat pilih jawaban

   1. Goerli Network
   2. Locally managed
   3. System-recommended
   4. System-recommended
   5. Isi moniker/graffiti/usernamemu (bebas)
   6. https://beaconstate-goerli.chainsafe.io/
   7. Yes 
   8. No 
   9. Yes 
   10. Locally managed
   11. Pilih regulated terus next
   12. Save and exit
   13. y
   14. y

   Tunggu sampe sync (1-3 hari)

### Daftarkan validator
1. Pastikan Node kalian sudah sync
   ```console
   ~/bin/stader-cli --allow-root node sync
   ```

   Kalo outputnya gini berarti node kalian sudah sync
   ```console
   Your primary execution client is fully synced.
   Your primary consensus client is fully synced.
   ```
2. Buat dompet
   ```console
   stader-cli --allow-root wallet init
   ```
   
   1. Pilih Y
   2. Masukan password (bebas 12 character)
   3. Salin mnemonic
   4. Masukin 24
   5. Paste mnemonic tadi sesuai urutan (per kata)
   6. Salin node key

3. Claim faucet
   1. Join server [discord](https://discord.gg/staderlabs)
   2. Masuk ke channel [#ethxclusives-permisionless-node-operators](https://discord.com/channels/839544036984750120/1079816702017155072)
   3. Send chat `!interested`
   4. Tunggu sampe kalian diapprove jadi beta tester
   5. Masuk ke channel [#ethx-rolling-beta-test](https://discord.com/channels/839544036984750120/1089835916274708490)
   6. Paste Node key kalian (Jangan spam, cukup sekali aja), contoh
      ```console
      Your Stader Node is currently using the Goerli Test Network.

      The node wallet is initialized.
      Node account: 0x0000000000000000000000000000000000000000
      ```
4. Daftar validator
   ```console
   ~/bin/stader-cli --allow-root node register --on <MONIKER>
   ```

   Ganti moniker terserah kalian, contoh:
   
   ```console
   ~/bin/stader-cli --allow-root node register --on node123
   ```
5. Deposit SD
   ```console
   ~/bin/stader-cli --allow-root node deposit-sd --amount 640
   ```
6. Deposit 4 ETH
   ```console
   ~/bin/stader-cli --allow-root node deposit --num-validators 1
   ```
7. Cek status
   ```console
   ~/bin/stader-cli --allow-root node status
   ```

## Perintah berguna

### Cek service status
```console
~/bin/stader-cli --allow-root service status
```

### Cek service logs
```console
~/bin/stader-cli --allow-root service logs
```

### Cek node status
```console
~/bin/stader-cli --allow-root node status
```

## Troubleshoot
Reserved