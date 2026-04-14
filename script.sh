# MariaDB Installation Script
#!/bin/bash

# ============================================
# MariaDB Auto Installer Script
# For Ubuntu / Debian
# ============================================

set -e

echo "🚀 Update package list..."
sudo apt update -y

echo "📦 Install MariaDB Server..."
sudo apt install -y mariadb-server

echo "✅ Enable & Start MariaDB Service..."
sudo systemctl enable mariadb
sudo systemctl start mariadb

echo "🔍 Status MariaDB:"
sudo systemctl status mariadb --no-pager

# ================================
# Secure Installation
# ================================

echo "🔐 Configuring MariaDB Security..."

# Default root password (bisa diubah sebelum run script)
MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD:-root123}

sudo mysql <<EOF
-- Set root password
ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';

-- Remove anonymous users
DELETE FROM mysql.user WHERE User='';

-- Disallow root login remotely
UPDATE mysql.user SET Host='localhost' WHERE User='root';

-- Remove test database
DROP DATABASE IF EXISTS test;

-- Apply changes
FLUSH PRIVILEGES;
EOF

echo "🎉 MariaDB installation completed!"
echo "=================================="
echo "📌 Root User     : root"
echo "📌 Root Password : ${MYSQL_ROOT_PASSWORD}"
echo "=================================="

echo "💡 Login dengan:"
echo "mysql -u root -p"