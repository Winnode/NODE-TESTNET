<p align="center">
![moi-logo](https://user-images.githubusercontent.com/96678356/219348837-5ee4b69d-071e-43b5-a843-d8f494fb6c26.svg)
</p>


> [Docs](https://validator.moi.technology/docs?activeTab=CLI)

> [Portal](https://moi.technology/indus/)


* [Register + KYC](https://iome.ai/signup) 

* Submit Front ID & Selfie, wait 2  Minute - 24 Hours

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
apt install npm 
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

