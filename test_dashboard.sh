#!/bin/bash
# -----------------------------------------
# test_dashboard.sh — создаёт нагрузку
# для проверки дашборда и алертов
# -----------------------------------------

set -e

echo "🔥 Installing stress-ng for load testing..."
sudo apt install -y stress-ng

echo "⚙️  Creating CPU load for 60 seconds..."
stress-ng --cpu 4 --timeout 60s

echo "✅ Load test complete. Check Netdata dashboard:"
echo "  http://$(hostname -I | awk '{print $1}'):19999"
echo "and look for CPU usage alert."
