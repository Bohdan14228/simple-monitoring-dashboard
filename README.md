# simple-monitoring-dashboard

# 🖥️ Basic Monitoring Dashboard with Netdata

This project demonstrates how to set up a **real-time system monitoring dashboard** using [Netdata](https://www.netdata.cloud/).  
Site project [https://roadmap.sh/projects/simple-monitoring-dashboard](https://roadmap.sh/projects/simple-monitoring-dashboard)

You’ll learn how to:
- Install and configure Netdata on a Linux system  
- Monitor CPU, memory, and disk I/O  
- Access and customize the web dashboard  
- Set up alerts (e.g., CPU usage > 80%)  
- Automate setup and testing using shell scripts  

---

## 🧩 Project Structure
├── setup.sh # Installs and starts Netdata
├── test_dashboard.sh # Simulates load to trigger alerts
├── cleanup.sh # Uninstalls Netdata
└── README.md # Project documentation

## ⚙️ 1. Setup

Run the setup script to install and start Netdata:
```bash
chmod +x setup.sh
./setup.sh
```
Access the dashboard:
http://<your_server_ip>:19999

## ⚙️ 2. Configure Alerts

Edit /usr/lib/netdata/conf.d/health.d/cpu.conf
and add (or modify) this alert rule:
```bash
alarm: cpu_usage
on: system.cpu
lookup: average -1m percentage
every: 10s
warn: $this > 80
crit: $this > 90
info: CPU usage above 80%
to: sysadmin

Reload Netdata health configs:
sudo killall -USR2 netdata
```
## 3. Test the Dashboard
```bash
chmod +x test_dashboard.sh
./test_dashboard.sh
```

## 4. Cleanup
To remove Netdata completely:
```bash
chmod +x cleanup.sh
./cleanup.sh
```
