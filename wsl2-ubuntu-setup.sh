set -euo pipefail

# Colors for output
GREEN="\e[32m"
RED="\e[31m"
NC="\e[0m"

# Function to print status messages
log() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

error_exit() {
    echo -e "${RED}[ERROR]${NC} $1" >&2
    exit 1
}

# Ensure script is run as non-root but with sudo privileges
if [[ $EUID -eq 0 ]]; then
    error_exit "Please run this script as a normal user with sudo privileges, not as root."
fi

log "Updating package lists..."
sudo apt update -y

log "Upgrading existing packages..."
sudo apt upgrade -y

log "Installing essential build tools..."
sudo apt install -y build-essential cmake pkg-config

log "Installing version control tools..."
sudo apt install -y git curl wget unzip zip

log "Installing Python and pip..."
sudo apt install -y python3 python3-pip python3-venv

log "Installing Node.js (LTS) and npm..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

log "Installing Docker (optional, for container builds)..."
sudo apt install -y ca-certificates gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
    sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker "$USER"

log "Installing additional useful tools..."
sudo apt install -y htop tree jq make gdb

log "Cleaning up..."
sudo apt autoremove -y
sudo apt clean

log "Setup complete!"
log "You may need to restart your WSL session for group changes (e.g., Docker) to take effect."