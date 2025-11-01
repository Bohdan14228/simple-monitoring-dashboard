#!/bin/bash
# -----------------------------------------
# cleanup.sh — удаление Netdata
# -----------------------------------------

set -e

echo "🧹 Stopping Netdata service..."
sudo systemctl stop netdata || true

echo "🗑️ Removing Netdata and its configs..."
sudo apt remove --purge -y netdata
sudo rm -rf /etc/netdata /var/lib/netdata /usr/lib/netdata

echo "✅ Netdata cleanup complete."
