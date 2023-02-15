<p align="center">
  <img height="50" height="auto" src="https://user-images.githubusercontent.com/38981255/184088981-3f7376ae-7039-4915-98f5-16c3637ccea3.PNG">
</p>

# Install Become a Master Node

> [DOCS](https://docs.inery.io/docs)
> 
> [Explorer Inary](https://explorer.inery.io/ "Explorer Inary")

## Minimum Spec Hardware :
NODE  | CPU     | RAM      | SSD     | OS     |
| ------------- | ------------- | ------------- | -------- | -------- |
| Inery | 4          | 8         | 50  | Ubuntu 20.04 LTS  |


## Update Inery-node

* Stop Node
  ```console
  cd $HOME/inery-node/inery.setup/master.node
  ./stop.sh
  ```
  Check 
  ```console
  pidof nodine
  ```
    Execute Stop 
  ```console
  pidof -9 <pid>
  ```

* Delete Folder Inery node
  ```console
  cd $HOME
  rm -rf inery-node
  ```

* Download Inery node
  ```console
   git clone  https://github.com/inery-blockchain/inery-node
  ```

* Goto Folder `inery.setup`
  ```console
   cd inery-node/inery.setup
  ```

* executable `ine.py`
  ```console
  chmod +x ine.py
  ```

* Export path
  ```console
  ./ine.py --export
  ```

* Load path
  ```console
  source $HOME/.bashrc
  ```

* Config Edit
  ```console
  nano tools/config.json
  ```
  Cari `MASTER_ACCOUNT` lalu ubah value seperti berikut
  | Informasi | Keterangan |
  |-----------|------------|
  |NAME|Inery Account|
  |PUBLIC_KEY|Public Account|
  |PRIVATE_KEY|Privaet Account|
  |PEER_ADDRESS|127.0.0.1:9010|

 Save <kbd>CTRL</kbd>+<kbd>x</kbd>+<kbd>y</kbd>

* Run node
  ```console
  ./ine.py --master
  ```

* Check log node
  ```console
  tail -f master.node/blockchain/nodine.log
  ```

If it's syncron run`start.sh`
```console
./master.node/start.sh
```


## Perintah berguna

### Mengecek log

```
tail -f blockchain/nodine.log
```

> pastikan anda sudah berada di folder `master.node` atau `lite.node`

### Mengecek informasi blockchain

```
cline get info
```

### Mengecek informasi akun

```
cline get account NAMA_AKUN_YANG_INGIN_DICEK
```

### Mengecek transaksi dari blockchain

```
 cline get transaction TX_ID
```

### Membuat dompet baru

```
cline wallet create --name NAMA_DOMPET --file NAMA_FILE.txt
```

> Salin sandi anda ke tempat yang aman, karena ada bug yang mengakibatkan sandi didalam file .txt hilang, yang mengakibatkan dompet tidak dapat dibuka

### Membuka dompet yang terkunci

```
cline wallet unlock --name NAMA_DOMPET --password KATA_SANDI_DOMPET
```

### Membuka dompet yang sudah terbuka

```
cline wallet open --name NAMA_DOMPET
```

### Mengimpor private key

```
cline wallet import --name NAMA_DOMPET --private-key PRIVATE_KEY
```

> Sebelum mengimpor private key, pastikan bahwa dompet yang anda gunakan sudah terbuka

### Melihat list dompet

```
cline wallet list
```

> `*` pada dompet menandakan bahwa dompet terbuka

### Melihat public key dari dompet yang terbuka

```
cline wallet keys
```

### Melihat private key dari dompet yang terbuka

```
 cline wallet private_keys --name NAMA_DOMPET --password KATA_SANDI_DOMPET
```

### Transfer token

```
 cline transfer ALAMAT_PENGIRIM ALAMAT_PENERIMA JUMLAH_YANG_AKAN_DITRANSFER
```


## Troubleshoot

Ada beberapa masalah yang mungkin timbul saat proses pemasangan dan menhjalankan node, di bagian ini saya akan memberikan solusi dari masalah-masalah tersebut

### Saya lupa kata sandi dompet saya, bagaimana saya membuka dompet saya

Jika anda lupa kata sandi dompet anda, maka dompet anda tidak akan bisa dibuka kembali. Solusinya adalah membuat dompet baru dan memasukan `private key` yang sama seperti sebelumnya

Untuk cara membuat dompet baru bisa anda lihat di bagian `Perintah berguna`, kali ini jangan lupa untuk menyimpan sandi anda

### FileNotFoundError: [Errno 2] No such file or directory: './blockchain/config/config.ini'

Jika pesan error ini muncul kemungkinan karena `libssl 1.1` tidak terpasang di server anda, untuk memasangnya silahkan gunakan perintah dibawah

```
wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
```

### net_plugin::plugin_startup failed to bind to port 9010

Jika pesan error ini muncul maka penyebabnya karena `nodine` masinh berjalan di latar belakang, solusinya adalah mematikan `nodine`. Anda bisa menggunakan perintah dibawah untuk mematikan `nodine`

```
pidof nodine

pidkill -9 <pid>
```

Untuk memastikan bahwa `nodine` sudah berhenti, anda bisa menggunakan perintah ini

```
pidof nodine
```

Setelah memastikan `nodine` benar-benar berhenti, anda dapat menjalankan node lagi
