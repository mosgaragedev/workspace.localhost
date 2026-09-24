#!/bin/bash
# save as fix_wsl_docker.sh and run with sudo

echo "🔧 Fixing WSL2 Docker Daemon..."

# 1. CRITICAL: Disable Docker Desktop WSL Integration
# If you have Docker Desktop installed, you MUST uncheck "Use the WSL 2 based engine" 
# and disable WSL integration for Ubuntu in Docker Desktop settings, otherwise they will fight.

# 2. Remove any conflicting Docker Desktop binaries
rm -f /usr/local/bin/docker-compose
rm -f /usr/local/bin/docker

# 3. Fix the iptables/nftables conflict (Common WSL2 kernel issue)
update-alternatives --set iptables /usr/sbin/iptables-legacy 2>/dev/null || true
update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy 2>/dev/null || true

# 4. Create a systemd override to ensure Docker waits for network and sets FORWARD rules
mkdir -p /etc/systemd/system/docker.service.d
cat <<EOF > /etc/systemd/system/docker.service.d/wsl-override.conf
[Service]
ExecStartPre=/bin/sleep 5
ExecStartPre=/sbin/iptables -P FORWARD ACCEPT
Restart=always
RestartSec=5s
EOF

# 5. Reload and force start
systemctl daemon-reload
systemctl enable docker
systemctl restart docker

# 6. Verify
if docker info > /dev/null 2>&1; then
    echo "✅ Docker is now running natively and bulletproofed in WSL2!"
else
    echo "❌ Docker failed to start. Check 'journalctl -u docker' for details."
fi
