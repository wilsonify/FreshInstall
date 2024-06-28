echo "Start Installing Prerequisites"
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
echo "Done Installing Prerequisites"

echo "Start Adding Docker’s Repo"
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/debian bookworm stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
cat /etc/apt/sources.list.d/docker.list
sudo apt-get update
echo "Done Adding Docker’s Repo"

echo "Start Installing Docker Community Edition"
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin
echo "Done Installing Docker Community Edition"

echo "start installing docker compose"
mkdir -p /opt/docker-compose/v2.27.1
curl -L "https://github.com/docker/compose/releases/download/v2.27.1/docker-compose-linux-x86_64" -o /opt/docker-compose/v2.27.1/docker-compose
chmod +x /opt/docker-compose/v2.27.1/docker-compose
sudo update-alternatives --install /usr/bin/docker-compose docker-compose /opt/docker-compose/v2.27.1/docker-compose 100
docker-compose --version
echo "start installing docker compose"

echo "Start checking the Docker service status"
sudo systemctl is-active docker
sudo usermod -aG docker $USER
sudo docker run hello-world
echo "Done checking the Docker service status"
echo "logout for permissions to take effect"
