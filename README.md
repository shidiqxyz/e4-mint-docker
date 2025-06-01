# e4-mint-docker

## 🛠 Install Requirements

### 🐧 Linux (Debian/Ubuntu)

```bash
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - && sudo apt install -y nodejs docker.io
```

### 🍎 macOS (with Homebrew)

```bash
brew install node docker && brew services start docker
```



## 📥 1. Clone the Repository

```bash
git clone https://github.com/shidiqxyz/e4-mint-docker.git
cd e4-mint-docker
````


## 🔑 2. Insert Your Private Keys

Open the `pk.txt` file and paste your private keys inside, one per line:

```
0xPRIVATE_KEY_1
0xPRIVATE_KEY_2
0xPRIVATE_KEY_3
...

> These keys should already be funded and ready on the **MegaETH network**.
```

---

## 🐋 3. Build Docker Image

```bash
docker build -t claim-bot .
```

---

## 🚀 4. Run All Containers

Make sure the script has execution permission, then run:

```bash
chmod +x run-containers.sh
./run-containers.sh
```

This will generate one `.env` file and one container per private key.

---

## 🧹 Optional Cleanup

To stop and remove all running containers named "bot":

```bash
# Stop all bot containers
docker stop $(docker ps -q --filter "name=bot")

# Remove all stopped bot containers
docker rm $(docker ps -a -q --filter "name=bot")
```



