# Update
sudo apt-get update

# Install curl
sudo apt-get -y install curl pv toilet dialog

# Download the get-docker.sh script
curl -fsSL get.docker.com -o get-docker.sh

# Run the installer script
sudo sh get-docker.sh

# Setup the Docker user
sudo usermod -aG docker $USER

# Install docker-compose..
sudo pip install docker-compose

