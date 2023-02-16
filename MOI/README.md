<p align="center">
  <img height="50" height="auto" src="https://user-images.githubusercontent.com/38981255/184088981-3f7376ae-7039-4915-98f5-16c3637ccea3.PNG">
</p>


> [Docs](https://validator.moi.technology/docs?activeTab=CLI)

> [Portal](https://moi.technology/indus/)

> [Register + KYC](https://iome.ai/signup)


> [Register + KYC](https://iome.ai/signup) 
Submit Front ID & Selfie, wait 2  Minute - 24 Hours

# Install Become a Node MOI

## Minimum Spec Hardware :
NODE  | CPU     | RAM      | SSD     | OS     |
| ------------- | ------------- | ------------- | -------- | -------- |
| MOI | 4          | 8         | 250  | Ubuntu 20.04 LTS  |


## Auto Install
  ```console
wget -O setup_moipod_indus.sh https://run-indus.moi.technology && chmod +x setup_moipod_indus.sh && bash setup_moipod_indus.sh
  ```

## Download Binary using cURL 
  ```console
sudo curl -o moipod https://validator.moi.technology/moipod/v0.5.1/moipod.linux && sudo chmod +x moipod
  ```

## Setup Node

* Step 1: Install NodeJS
  ```console
apt update 
apt install Node.js 
  ``
  
* Step 2: Install Node ZKP Library
  ```console
sudo npm i @nuid/zk@0.0.12 -g
  ```
  
* Step 3: Start/Restart MOI Pod
Node_password = create gegining Instalation
  ```console
./moipod --username <MOI-ID username> --password <MOI-ID password> --nodepass <node password>
  ```

* Step 4: Import Node
  ```console
./moipod --username <MOI-ID username> --password <MOI-ID password> --nodepass <node password> --kramaID <kramaID of the node to be imported>
  ```
  
* Step 5: Deregister Node from Machine
  ```console
./moipod --username <moi-id username> --password <moi-id password> --nodepass <node password> --deregister
  ```

## Check Validator
https://iome.ai/validators

