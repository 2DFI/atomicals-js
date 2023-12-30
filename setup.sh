## env ubuntu

sudo apt install git
sudo apt install npm
sudo npm -version

sudo npm config set registry https://registry.npm.taobao.org
sudo npm config get registry

sudo npm install -g n
sudo n v16

sudo npm install -g yarn


# dir
sudo mkdir -p /data/defi
sudo chown xdjf /data/defi
sudo cd /data/defi

# github
git clone https://github.com/atomicals/atomicals-js.git

cd atomicals-js

sudo yarn install
sudo yarn run build

sudo yarn run cli --help

# wallet
# .env
# WALLET_PATH=./wallets
# WALLET_FILE=wallet.json
# CONCURRENCY=20  # 不设置此参数默认workder数=cpu内核数-1

sudo yarn cli wallet-init

# mint 
# yarn cli mint-dft quark --satsbyte 90
./quark.sh & #loop